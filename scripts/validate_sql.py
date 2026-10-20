"""Validador read-only de consultas SQL contra o banco PostgreSQL do e-SUS PEC.

Executa EXPLAIN com parâmetros de exemplo sem executar as consultas sobre as linhas.
Garante conexão estritamente somente leitura (default_transaction_read_only = on,
statement_timeout = 30000).

Conexão: DATABASE_URL ou as variáveis padrão do libpq (PGHOST, PGPORT, PGDATABASE,
PGUSER, PGPASSWORD). Nada é lido de arquivo de configuração.

Consultas marcadas com "-- status: revisar" também passam pelo EXPLAIN; a marca só
sinaliza que a regra de negócio precisa de conferência humana. As visões de apoio
definidas no próprio repositório (CREATE VIEW em sql/) são embutidas como subconsulta,
porque a sessão somente leitura não pode criá-las no banco.

Uso:
    python scripts/validate_sql.py [--dir sql] [--file caminho/arquivo.sql] [--report relatorio.json] [--report-md relatorio.md]
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Any

import psycopg

# Amostras realistas de parâmetros para viabilizar o plano de execução via EXPLAIN.
# Substituição ordenada por especificidade (chaves mais longas primeiro).
_SAMPLE_CNS = "'" + "7" + "0" * 14 + "'"
SAMPLE_PARAMS: list[tuple[str, str]] = [
    (":'cpf'", "'12345678901'"),
    (":'cns'", _SAMPLE_CNS),
    (":'fim'", "'20260430'"),
    (":'ini'", "'20260101'"),
    (":'nu_ine'", "'0000000000'"),
    (":'ine_1'", "'0000000000'"),
    (":'ine_2'", "'0000000000'"),
    (":'ine_3'", "'0000000000'"),
    (":dt_fim_quadrimestre", "'2026-04-30'::date"),
    (":dt_inicio", "20260101"),
    (":dt_fim", "20260430"),
    (":nu_ine", "'0000000000'"),
    (":ine_1", "'0000000000'"),
    (":ine_2", "'0000000000'"),
    (":ine_3", "'0000000000'"),
    (":ine", "'0000000000'"),
    (":ini12", "20250501"),
    (":ini6", "20251101"),
    (":ini", "20260101"),
    (":fim", "20260430"),
    (":mes_ano", "202604"),
    (":ano_mes", "202604"),
    (":nu_mes", "4"),
    (":nu_ano", "2026"),
    (":dias", "30"),
    (":pessoas_parametro", "2000"),
    (":cbo", "'225142'"),
    (":cpf", "'12345678901'"),
    (":cns", _SAMPLE_CNS),
]


def get_connection_url() -> str:
    """Monta a URL de conexão a partir do ambiente. Nunca grava credenciais."""
    if os.environ.get("DATABASE_URL"):
        return os.environ["DATABASE_URL"]
    if os.environ.get("PGUSER") or os.environ.get("PGHOST"):
        # String vazia: a própria libpq lê PGHOST, PGPORT, PGUSER e PGPASSWORD do
        # ambiente, sem montar URL à mão (senha com "@" ou ":" quebraria a URL).
        return "" if os.environ.get("PGDATABASE") else "dbname=esus"
    raise RuntimeError("Defina DATABASE_URL ou PGUSER/PGPASSWORD/PGHOST/PGPORT/PGDATABASE.")


def get_connection(conn_url: str | None = None) -> psycopg.Connection:
    """Abre conexão com o PostgreSQL forçando parâmetros estritos de leitura."""
    url = get_connection_url() if conn_url is None else conn_url
    return psycopg.connect(
        url,
        options="-c default_transaction_read_only=on -c statement_timeout=30000",
        connect_timeout=10,
    )


def extract_revisar_reason(sql_text: str) -> str | None:
    """Extrai o motivo de revisão do cabeçalho se houver '-- status: revisar'."""
    m = re.search(r"^--\s*status:\s*revisar(?:\s*\((.*?)\))?", sql_text, re.M | re.I)
    if m:
        return (m.group(1) or "").strip() or "marcado para revisao humana"
    return None


_VIEW_DEF = re.compile(
    r"CREATE\s+(?:OR\s+REPLACE\s+)?VIEW\s+(?:IF\s+NOT\s+EXISTS\s+)?([a-z_][a-z0-9_]*)\s+AS\s+(SELECT\b[\s\S]*?)(?:;|\Z)",
    re.I,
)
_NAO_ALIAS = (
    "ON|WHERE|JOIN|LEFT|RIGHT|INNER|FULL|CROSS|GROUP|ORDER|LIMIT|UNION|USING|"
    "HAVING|WINDOW|EXCEPT|INTERSECT|NATURAL|LATERAL|OFFSET|FETCH"
)


def load_repo_views(sql_dir: Path) -> dict[str, str]:
    """Lê as visões de apoio definidas em CREATE VIEW nos arquivos do repositório."""
    views: dict[str, str] = {}
    for path in sorted(sql_dir.glob("**/*.sql")):
        clean = re.sub(r"--.*", "", path.read_text(encoding="utf-8"))
        for m in _VIEW_DEF.finditer(clean):
            views[m.group(1).lower()] = m.group(2).strip()
    return views


def inline_repo_views(sql_code: str, views: dict[str, str]) -> str:
    """Troca "FROM stg_x [alias]" por "FROM (SELECT ...) alias" para o EXPLAIN."""
    for _ in range(3):  # visões que usam outras visões
        before = sql_code
        for name, body in views.items():
            rx = re.compile(
                rf"(\b(?:FROM|JOIN)\s+){name}\b(?!\s*\.)"
                rf"(?:\s+(?:AS\s+)?(?!(?:{_NAO_ALIAS})\b)([a-z_][a-z0-9_]*))?",
                re.I,
            )
            sql_code = rx.sub(lambda m, b=body, n=name: f"{m.group(1)}({b}) AS {m.group(2) or n}", sql_code)
        if sql_code == before:
            break
    return sql_code


def substitute_parameters(sql_code: str) -> str:
    """Substitui parâmetros conhecidos por literais válidos para o EXPLAIN."""
    result = sql_code
    for param, sample in SAMPLE_PARAMS:
        result = result.replace(param, sample)
    return result


def is_ddl_statement(sql_clean: str) -> bool:
    """Verifica se a instrução é DDL pura (CREATE TABLE, CREATE FUNCTION, etc.)."""
    pattern = r"^\s*CREATE\s+(?:OR\s+REPLACE\s+)?(TABLE|FUNCTION|PROCEDURE|TRIGGER|INDEX)\b"
    return bool(re.search(pattern, sql_clean, re.I))


def extract_select_from_view(sql_clean: str) -> list[str]:
    """Extrai todas as porções SELECT de instruções CREATE VIEW para permitir EXPLAIN."""
    pattern = r"CREATE\s+(?:OR\s+REPLACE\s+)?VIEW\s+(?:IF\s+NOT\s+EXISTS\s+)?([^\s(]+)\s+AS\s+(SELECT\b[\s\S]*?)(?:;|\Z)"
    return [m.group(2).strip() for m in re.finditer(pattern, sql_clean, re.I)]


def validate_query(conn: psycopg.Connection, sql_path: Path, views: dict[str, str] | None = None) -> dict[str, Any]:
    """Valida um arquivo SQL individual via EXPLAIN em conexão somente leitura.

    Retorna dicionário estruturado com o resultado da validação.
    """
    raw_content = sql_path.read_text(encoding="utf-8")
    revisar_reason = extract_revisar_reason(raw_content)

    # Remover comentários para analisar e preparar o SQL
    clean_sql = re.sub(r"--.*", "", raw_content).strip()
    if not clean_sql:
        return {
            "path": sql_path.as_posix(),
            "status": "PASSED",
            "reason": "arquivo vazio ou somente comentarios",
            "error": None,
            "rows": 0,
        }

    # Tratamento de DDL (ex.: funções PL/pgSQL ou tabelas SQLite)
    if is_ddl_statement(clean_sql):
        return {
            "path": sql_path.as_posix(),
            "status": "DDL",
            "reason": "definicao DDL (valida em sua camada de aplicacao)",
            "error": None,
            "rows": 0,
        }

    # Tratamento de CREATE VIEW: extrai todas as porções SELECT correspondentes
    view_queries = extract_select_from_view(clean_sql)
    queries_to_explain = view_queries if view_queries else [clean_sql]

    total_plan_rows = 0
    cur = conn.cursor()
    try:
        for q in queries_to_explain:
            query = substitute_parameters(inline_repo_views(q, views or {}))
            cur.execute(f"EXPLAIN {query}")
            plan_rows = cur.fetchall()
            total_plan_rows += len(plan_rows)
            conn.rollback()

        return {
            "path": sql_path.as_posix(),
            "status": "REVISAR" if revisar_reason else "PASSED",
            "reason": revisar_reason,
            "error": None,
            "rows": total_plan_rows,
        }
    except Exception as exc:
        conn.rollback()
        first_line_err = str(exc).strip().splitlines()[0] if str(exc).strip() else "erro desconhecido"
        return {
            "path": sql_path.as_posix(),
            "status": "FAILED",
            "reason": revisar_reason,
            "error": first_line_err,
            "rows": 0,
        }
    finally:
        cur.close()


def run_validation(
    sql_dir: Path,
    single_file: Path | None = None,
    report_json: Path | None = None,
    report_md: Path | None = None,
) -> int:
    """Executa a validação de todas as consultas e gera relatório consolidado."""
    if single_file:
        targets = [single_file] if single_file.exists() else []
    else:
        targets = sorted(sql_dir.glob("**/*.sql"))

    if not targets:
        print(f"Nenhum arquivo SQL encontrado em {sql_dir}")
        return 1

    try:
        conn = get_connection()
    except Exception as exc:
        print(f"Falha de conexao com o banco de dados: {exc}")
        return 1

    views = load_repo_views(sql_dir if sql_dir.exists() else Path("sql"))
    results: list[dict[str, Any]] = []
    print(f"Iniciando validacao de {len(targets)} consultas SQL contra e-SUS PEC...")
    print("-" * 80)

    try:
        for path in targets:
            res = validate_query(conn, path, views)
            results.append(res)
            st = res["status"]
            if st == "PASSED":
                print(f"[OK]      {res['path']} (plano: {res['rows']} linhas)")
            elif st == "REVISAR":
                print(f"[REVISAR] {res['path']} (EXPLAIN ok; regra a conferir: {res['reason']})")
            elif st == "DDL":
                print(f"[DDL]     {res['path']} - {res['reason']}")
            else:
                print(f"[FALHA]   {res['path']} - {res['error']}")
    finally:
        conn.close()

    print("-" * 80)
    passed_count = sum(1 for r in results if r["status"] == "PASSED")
    revisar_count = sum(1 for r in results if r["status"] == "REVISAR")
    ddl_count = sum(1 for r in results if r["status"] == "DDL")
    failed_count = sum(1 for r in results if r["status"] == "FAILED")
    total_count = len(results)

    print(f"Total: {total_count} | OK: {passed_count} | Revisar: {revisar_count} | DDL: {ddl_count} | Falhas: {failed_count}")

    if report_json:
        report_json.parent.mkdir(parents=True, exist_ok=True)
        report_json.write_text(json.dumps(results, indent=2, ensure_ascii=False), encoding="utf-8")
        print(f"Relatorio JSON salvo em: {report_json}")

    if report_md:
        report_md.parent.mkdir(parents=True, exist_ok=True)
        lines = [
            "# Relatório de Validação SQL — e-SUS PEC",
            "",
            f"**Total de Consultas**: {total_count}  ",
            f"**Aprovadas no EXPLAIN**: {passed_count}  ",
            f"**Marcadas para Revisão**: {revisar_count}  ",
            f"**Objetos DDL/Schema**: {ddl_count}  ",
            f"**Falhas**: {failed_count}  ",
            "",
            "| Arquivo | Status | Detalhes |",
            "|---|---|---|",
        ]
        for r in results:
            detail = r["error"] if r["status"] == "FAILED" else (r["reason"] or f"plano {r['rows']} linhas")
            lines.append(f"| `{r['path']}` | **{r['status']}** | {detail} |")
        lines.append("")
        report_md.write_text("\n".join(lines), encoding="utf-8")
        print(f"Relatorio Markdown salvo em: {report_md}")

    return 0 if failed_count == 0 else 1


def main() -> None:
    parser = argparse.ArgumentParser(description="Validador read-only de consultas SQL do e-SUS PEC.")
    parser.add_argument("--dir", type=Path, default=Path("sql"), help="Diretorio com arquivos SQL (padrao: sql)")
    parser.add_argument("--file", type=Path, default=None, help="Arquivo SQL unico para validar")
    parser.add_argument("--report", type=Path, default=None, help="Caminho para exportar relatorio JSON")
    parser.add_argument("--report-md", type=Path, default=None, help="Caminho para exportar relatorio Markdown")
    args = parser.parse_args()

    exit_code = run_validation(
        sql_dir=args.dir,
        single_file=args.file,
        report_json=args.report,
        report_md=args.report_md,
    )
    sys.exit(exit_code)


if __name__ == "__main__":
    main()
