"""Coleta blocos SQL de notas Markdown e gera arquivos .sql versionáveis.

Uso:
    python scripts/harvest_sql.py --out sql --report build/harvest_report.json SRC [SRC ...]

Cada SRC é um arquivo ou pasta com .md. Nada é gravado se o bloco casar com
algum padrão de dado sensível; esses blocos vão para o relatório.

Termos locais (nome de município ou de pessoa) ficam fora do repositório, em um
arquivo de regex (um por linha) apontado por ESUS_TERMOS_PRIVADOS ou, por padrão,
~/.esus-mapeamento-termos.txt. A leitura para na linha "# --- somente auditoria".
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import unicodedata
from pathlib import Path

import sqlglot
from sqlglot import exp

FENCE = re.compile(r"```sql\s*\n(.*?)```", re.S | re.I)
HEADING = re.compile(r"^#{1,4}\s+(.*)$", re.M)


def _termos_locais() -> re.Pattern:
    arq = Path(os.environ.get("ESUS_TERMOS_PRIVADOS", Path.home() / ".esus-mapeamento-termos.txt"))
    termos: list[str] = []
    if arq.exists():
        for linha in arq.read_text(encoding="utf-8").splitlines():
            if linha.startswith("# --- somente auditoria"):
                break
            if linha.strip() and not linha.startswith("#"):
                termos.append(linha.strip())
    return re.compile("|".join(termos) if termos else r"(?!x)x", re.I)


TERMOS_LOCAIS = _termos_locais()
INE_LITERAL = re.compile(r"'(0000(?!000000)\d{6}|(?!0[1-9])(?!0000)\d{10})'")

SENSITIVE = {
    "termo_local": TERMOS_LOCAIS,
    "cpf_cns_literal": re.compile(r"(?<![\d.])(?!12345678901|00000000000)(\d{11}|\d{15})(?!\d)"),
    "ibge_municipio": re.compile(r"\b41\d{5}\b"),
    "ip": re.compile(r"\b\d{1,3}(?:\.\d{1,3}){3}\b"),
    "segredo": re.compile(r"password|senha|passwd|token|secret", re.I),
    "literal_ine": re.compile(r"'(?:0000(?!000000)\d{6}|(?!0[1-9])(?!0000)\d{10})'"),
}

CATEGORIAS = [
    ("indicadores_cofinanciamento", ("cofinanciamento", "saude_bucal", "emulti", "vinculo_e_acomp",
                                     "proaps", "trilha_c", "padrao_ouro")),
    ("busca_ativa", ("busca_ativa", "guia_auditoria", "linha_cuidado", "tea_e")),
    ("imunizacao", ("vacina", "imunizacao")),
    ("cadastro_e_territorio", ("saneamento", "producao_acs", "acomp_cidadaos", "matriz_cruzamento", "cadsus")),
    ("modelagem_dw", ("staging", "ddl", "matriz_joins", "queries_postgresql", "modelagem_dw",
                      "engenharia_reversa")),
]


def categoria(group: str) -> str:
    for nome, chaves in CATEGORIAS:
        if any(c in group for c in chaves):
            return nome
    return "outras"


def sanitize(sql: str) -> str:
    """Troca literais que identificam equipe/município por parâmetros genéricos."""
    mapping: dict[str, str] = {}

    def ine(m: re.Match) -> str:
        mapping.setdefault(m.group(1), f":ine_{len(mapping) + 1}")
        return mapping[m.group(1)]

    sql = INE_LITERAL.sub(ine, sql)
    return TERMOS_LOCAIS.sub("<municipio>", sql)


def slug(text: str, limit: int = 60) -> str:
    text = unicodedata.normalize("NFKD", text).encode("ascii", "ignore").decode()
    text = re.sub(r"[^a-zA-Z0-9]+", "_", text).strip("_").lower()
    return text[:limit] or "consulta"


def clean_title(raw: str) -> str:
    raw = re.sub(r"[^\w\s().,/:+&-]", " ", raw, flags=re.U)
    raw = re.sub(r"^\s*\d+(\.\d+)*[.)]?\s*", "", raw)
    return re.sub(r"\s+", " ", raw).strip(" -")


def tables_of(sql: str) -> list[str]:
    cleaned = re.sub(r":\w+", "NULL", sql)
    try:
        trees = sqlglot.parse(cleaned, read="postgres")
    except Exception:
        return sorted(set(re.findall(r"\b(tb_[a-z0-9_]+)\b", sql)))
    found: set[str] = set()
    for tree in trees:
        if tree is None:
            continue
        ctes = {c.alias for c in tree.find_all(exp.CTE)}
        for t in tree.find_all(exp.Table):
            if t.name and t.name not in ctes:
                found.add(t.name.lower())
    return sorted(found) or sorted(set(re.findall(r"\b(tb_[a-z0-9_]+)\b", sql)))


def params_of(sql: str) -> list[str]:
    return sorted(set(re.findall(r"(?<![:\w]):([a-z_][a-z0-9_]*)", sql)))


def normalize(sql: str) -> str:
    return re.sub(r"\s+", " ", re.sub(r"--.*", "", sql)).strip().lower()


def iter_md(sources: list[Path]):
    for src in sources:
        if src.is_file():
            yield src
        else:
            yield from sorted(p for p in src.rglob("*.md") if ".trash" not in p.parts)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("sources", nargs="+", type=Path)
    ap.add_argument("--out", type=Path, default=Path("sql"))
    ap.add_argument("--report", type=Path, default=Path("build/harvest_report.json"))
    ap.add_argument("--dry", action="store_true")
    args = ap.parse_args()

    seen: dict[str, str] = {}
    kept, flagged, dup = [], [], 0
    for md in iter_md(args.sources):
        text = md.read_text(encoding="utf-8", errors="ignore")
        group = slug(md.stem, 40)
        for m in FENCE.finditer(text):
            sql = sanitize(m.group(1).strip())
            if len(sql) < 40 or not re.search(r"\b(select|with|create|insert|update)\b", sql, re.I):
                continue
            heads = HEADING.findall(text[: m.start()])
            title = clean_title(heads[-1]) if heads else md.stem
            hits = [k for k, rx in SENSITIVE.items() if rx.search(sql)]
            key = hashlib.sha1(normalize(sql).encode()).hexdigest()[:10]
            if hits:
                flagged.append({"grupo": group, "titulo": title, "motivos": hits, "id": key})
                continue
            if key in seen:
                dup += 1
                continue
            seen[key] = title
            kept.append({"id": key, "grupo": categoria(group), "titulo": title, "sql": sql})

    counters: dict[str, int] = {}
    for k in kept:
        counters[k["grupo"]] = counters.get(k["grupo"], 0) + 1
        k["arquivo"] = f"{k['grupo']}/{counters[k['grupo']]:02d}_{slug(k['titulo'], 50)}.sql"
        k["tabelas"] = tables_of(k["sql"])
        k["parametros"] = params_of(k["sql"])
        if not args.dry:
            dest = args.out / k["arquivo"]
            dest.parent.mkdir(parents=True, exist_ok=True)
            header = (
                f"-- titulo: {k['titulo']}\n"
                f"-- categoria: {k['grupo']}\n"
                f"-- tabelas: {', '.join(k['tabelas'])}\n"
                f"-- parametros: {', '.join(k['parametros']) or '-'}\n"
                f"-- uso: somente leitura (SET default_transaction_read_only = on)\n\n"
            )
            dest.write_text(header + k["sql"].rstrip() + "\n", encoding="utf-8")

    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(
        json.dumps({"mantidos": len(kept), "duplicados": dup, "sinalizados": flagged,
                    "itens": [{k: v for k, v in i.items() if k != "sql"} for i in kept]},
                   ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"mantidos={len(kept)} duplicados={dup} sinalizados={len(flagged)}")
    for f in flagged:
        print(" !", f["grupo"], "|", f["titulo"][:50], "|", f["motivos"])


if __name__ == "__main__":
    main()
