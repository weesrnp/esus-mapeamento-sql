"""Extrai a estrutura (sem dados) de um banco PostgreSQL do e-SUS PEC.

Conexão somente leitura, lida de variáveis de ambiente (nunca gravadas):
    PGHOST PGPORT PGDATABASE PGUSER PGPASSWORD

Saída: schema/schema.json e schema/tables/<grupo>/<tabela>.md
Não lê linhas de nenhuma tabela. Só catálogo do sistema.

Por padrão só entram os prefixos oficiais do PEC (tb_, tl_, ta_, rl_, mv_).
Visões criadas localmente (stg_, vw_ etc.) ficam de fora para o mapa
descrever o produto, não uma instalação específica; use --pattern para incluí-las.
"""
from __future__ import annotations

import argparse
import json
import os
import shutil
from collections import defaultdict
from pathlib import Path

import psycopg

COLS = """
SELECT c.relname, c.relkind, a.attnum, a.attname,
       format_type(a.atttypid, a.atttypmod), a.attnotnull,
       d.description
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace AND n.nspname = %s
JOIN pg_attribute a ON a.attrelid = c.oid AND a.attnum > 0 AND NOT a.attisdropped
LEFT JOIN pg_description d ON d.objoid = c.oid AND d.objsubid = a.attnum
WHERE c.relkind IN ('r','v','m') AND c.relname ~ %s
ORDER BY c.relname, a.attnum
"""

CONS = """
SELECT c.conname, c.contype, t.relname,
       (SELECT array_agg(att.attname ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute att ON att.attrelid = c.conrelid AND att.attnum = k.attnum),
       r.relname,
       (SELECT array_agg(att.attname ORDER BY k.ord)
          FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute att ON att.attrelid = c.confrelid AND att.attnum = k.attnum)
FROM pg_constraint c
JOIN pg_class t ON t.oid = c.conrelid
JOIN pg_namespace n ON n.oid = t.relnamespace AND n.nspname = %s
LEFT JOIN pg_class r ON r.oid = c.confrelid
WHERE c.contype IN ('p','f','u') AND t.relname ~ %s
"""

GROUPS = [
    ("tl_", "log_revisoes"),       # histórico Envers de cada tb_ (co_revisao, co_tipo_revisao)
    ("ta_", "auditoria"),          # trilha por trigger (co_tipo_auditoria, dt_auditoria)
    ("rl_", "relacionamentos"),    # tabelas de ligação N:N
    ("tb_fat_", "fatos"),
    ("tb_dim_", "dimensoes"),
    ("tb_cds_", "fichas_cds"),
    ("tb_cidadao", "cadastro_e_territorio"),
    ("tb_equipe", "cadastro_e_territorio"),
]


def group_of(name: str, kind: str) -> str:
    if kind in ("v", "m"):
        return "visoes"
    for prefix, g in GROUPS:
        if name.startswith(prefix):
            return g
    return "outras"


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--schema", default="public")
    ap.add_argument("--pattern", default=r"^(tb_|tl_|ta_|rl_|mv_)")
    ap.add_argument("--out", type=Path, default=Path("schema"))
    args = ap.parse_args()

    conn = psycopg.connect(
        host=os.environ["PGHOST"], port=os.environ.get("PGPORT", "5432"),
        dbname=os.environ["PGDATABASE"], user=os.environ["PGUSER"],
        password=os.environ.get("PGPASSWORD"),
        options="-c default_transaction_read_only=on -c statement_timeout=30000",
        connect_timeout=10,
    )
    tables: dict[str, dict] = {}
    with conn, conn.cursor() as cur:
        cur.execute(COLS, (args.schema, args.pattern))
        for rel, kind, num, col, typ, notnull, desc in cur.fetchall():
            tipo = {"v": "view", "m": "view materializada"}.get(kind, "tabela")
            t = tables.setdefault(rel, {"nome": rel, "tipo": tipo,
                                        "grupo": group_of(rel, kind), "colunas": [],
                                        "pk": [], "fk": [], "unique": []})
            t["colunas"].append({"n": num, "nome": col, "tipo": typ,
                                 "obrigatoria": bool(notnull), "descricao": desc})
        cur.execute(CONS, (args.schema, args.pattern))
        for name, ctype, rel, cols, ref, refcols in cur.fetchall():
            t = tables.get(rel)
            if not t:
                continue
            if ctype == "p":
                t["pk"] = cols
            elif ctype == "u":
                t["unique"].append(cols)
            else:
                t["fk"].append({"colunas": cols, "ref_tabela": ref, "ref_colunas": refcols})

    refs = defaultdict(list)
    for t in tables.values():
        for fk in t["fk"]:
            refs[fk["ref_tabela"]].append(t["nome"])

    out = args.out
    # A pasta é toda gerada: limpa antes para não sobrar página de tabela que saiu do banco.
    if (out / "tables").is_dir():
        shutil.rmtree(out / "tables")
    (out / "tables").mkdir(parents=True, exist_ok=True)
    (out / "schema.json").write_text(
        json.dumps(sorted(tables.values(), key=lambda x: x["nome"]), ensure_ascii=False, indent=1),
        encoding="utf-8")

    for t in tables.values():
        d = out / "tables" / t["grupo"]
        d.mkdir(parents=True, exist_ok=True)
        pk = set(t["pk"])
        lines = [f"# {t['nome']}", "", f"Tipo: {t['tipo']}  ", f"Grupo: {t['grupo']}  ",
                 f"Colunas: {len(t['colunas'])}", "",
                 "| # | Coluna | Tipo | Obrigatória | Chave |", "|--:|---|---|:-:|---|"]
        fkcols = {c: f"FK → {fk['ref_tabela']}" for fk in t["fk"] for c in fk["colunas"]}
        for c in t["colunas"]:
            key = "PK" if c["nome"] in pk else fkcols.get(c["nome"], "")
            lines.append(f"| {c['n']} | `{c['nome']}` | `{c['tipo']}` | "
                         f"{'sim' if c['obrigatoria'] else 'não'} | {key} |")
        if refs.get(t["nome"]):
            lines += ["", "Referenciada por: " + ", ".join(f"`{r}`" for r in sorted(set(refs[t['nome']])))]
        (d / f"{t['nome']}.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    by_group = defaultdict(int)
    for t in tables.values():
        by_group[t["grupo"]] += 1
    print(f"tabelas/views: {len(tables)}", dict(by_group))
    print("com PK:", sum(1 for t in tables.values() if t["pk"]),
          "| FKs:", sum(len(t["fk"]) for t in tables.values()))


if __name__ == "__main__":
    main()
