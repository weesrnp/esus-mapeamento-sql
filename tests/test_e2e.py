"""Testes ponta a ponta do esus-mapeamento-sql.

Rodam sem banco. Os que precisam de banco, de Node.js ou do arquivo externo de
termos privados são pulados quando o recurso não está disponível:

- banco: DATABASE_URL ou PGHOST/PGUSER (o validador só roda EXPLAIN);
- Node.js: checagem de sintaxe do JavaScript do viewer;
- termos privados: ESUS_TERMOS_PRIVADOS ou ~/.esus-mapeamento-termos.txt.
"""
from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
TEM_BANCO = bool(os.environ.get("DATABASE_URL") or os.environ.get("PGHOST") or os.environ.get("PGUSER"))
TERMOS_PRIVADOS = Path(os.environ.get("ESUS_TERMOS_PRIVADOS", Path.home() / ".esus-mapeamento-termos.txt"))
PREFIXOS_OFICIAIS = ("tb_", "tl_", "ta_", "rl_", "mv_")

PYTHON_EXE = (
    str(PROJECT_ROOT / ".venv" / "Scripts" / "python.exe")
    if (PROJECT_ROOT / ".venv" / "Scripts" / "python.exe").exists()
    else sys.executable
)


class TestScripts(unittest.TestCase):
    """Os scripts versionados rodam e geram o que prometem."""

    @unittest.skipUnless(TEM_BANCO, "sem DATABASE_URL/PGHOST/PGUSER: validação contra banco pulada")
    def test_validate_sql_execution(self) -> None:
        """Executa scripts/validate_sql.py e verifica retorno 0 (100% de conformidade no EXPLAIN ou revisar)."""
        script = PROJECT_ROOT / "scripts" / "validate_sql.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        cmd = [PYTHON_EXE, str(script)]
        res = subprocess.run(cmd, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

        self.assertEqual(
            res.returncode,
            0,
            f"scripts/validate_sql.py falhou com codigo {res.returncode}.\nSaida:\n{res.stdout}\n{res.stderr}",
        )
        self.assertIn("Falhas: 0", res.stdout, "O validador SQL reportou consultas com falha no banco de dados.")

    def test_build_graph_execution_and_artifacts(self) -> None:
        """Executa scripts/build_graph.py e valida que o retorno e 0 e todos os artefatos sao criados."""
        script = PROJECT_ROOT / "scripts" / "build_graph.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        cmd = [PYTHON_EXE, str(script)]
        res = subprocess.run(cmd, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

        self.assertEqual(
            res.returncode,
            0,
            f"scripts/build_graph.py falhou com codigo {res.returncode}.\nSaida:\n{res.stdout}\n{res.stderr}",
        )

        expected_artifacts = [
            PROJECT_ROOT / "graph" / "graph.json",
            PROJECT_ROOT / "graph" / "viewer.html",
            PROJECT_ROOT / "docs" / "indice_consultas.md",
            PROJECT_ROOT / "docs" / "indice_tabelas.md",
        ]
        for artifact in expected_artifacts:
            self.assertTrue(artifact.exists(), f"Artefato esperado nao foi gerado: {artifact}")
            self.assertGreater(artifact.stat().st_size, 0, f"Artefato gerado esta vazio: {artifact}")

    def test_audit_publicacao_execution(self) -> None:
        """Executa scripts/audit_publicacao.py e valida codigo 0 e exatamente 0 achados de vazamento."""
        script = PROJECT_ROOT / "scripts" / "audit_publicacao.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        cmd = [PYTHON_EXE, str(script)]
        res = subprocess.run(cmd, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

        self.assertEqual(
            res.returncode,
            0,
            f"scripts/audit_publicacao.py falhou com codigo {res.returncode}.\nSaida:\n{res.stdout}\n{res.stderr}",
        )
        self.assertIn("achados: 0", res.stdout, f"Auditoria de publicacao encontrou termos proibidos:\n{res.stdout}")

    @unittest.skipUnless(shutil.which("node"), "Node.js não está no PATH")
    def test_viewer_html_embedded_js_syntax(self) -> None:
        """Valida que o JavaScript embutido em graph/viewer.html passa na checagem estatica via node --check."""
        node_bin = shutil.which("node")

        viewer_path = PROJECT_ROOT / "graph" / "viewer.html"
        self.assertTrue(viewer_path.exists(), f"graph/viewer.html nao encontrado: {viewer_path}")

        html_content = viewer_path.read_text(encoding="utf-8")
        scripts = re.findall(r"<script>(.*?)</script>", html_content, re.DOTALL)
        self.assertGreaterEqual(len(scripts), 1, "Nenhum bloco <script> encontrado em viewer.html")

        for idx, script_content in enumerate(scripts):
            with tempfile.NamedTemporaryFile("w", suffix=".js", delete=False, encoding="utf-8") as temp_js:
                temp_js.write(script_content)
                temp_path = temp_js.name

            try:
                res = subprocess.run([node_bin, "--check", temp_path], capture_output=True, encoding="utf-8", errors="replace")
                self.assertEqual(
                    res.returncode,
                    0,
                    f"Erro de sintaxe no script {idx} de viewer.html:\n{res.stderr}",
                )
            finally:
                if os.path.exists(temp_path):
                    os.remove(temp_path)


class TestRobustez(unittest.TestCase):
    """Entradas inválidas, ausência de configuração e encodings."""

    @unittest.skipUnless(TEM_BANCO, "sem banco: o EXPLAIN da consulta inválida precisa de conexão")
    def test_invalid_sql_syntax_error_reporting(self) -> None:
        """Verifica que o validador SQL reporta erro estruturado e codigo != 0 diante de sintaxe SQL invalida."""
        script = PROJECT_ROOT / "scripts" / "validate_sql.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        with tempfile.NamedTemporaryFile("w", suffix=".sql", delete=False, encoding="utf-8") as tmp_sql:
            tmp_sql.write("-- titulo: Consulta Teste Invalida\n-- categoria: busca_ativa\nSELECT * FROM FROM WHERE GROUP BY ;;;")
            tmp_path = Path(tmp_sql.name)

        try:
            cmd = [PYTHON_EXE, str(script), "--file", str(tmp_path)]
            res = subprocess.run(cmd, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

            self.assertEqual(res.returncode, 1, "Validador deveria retornar codigo 1 para consulta com sintaxe invalida.")
            self.assertIn("[FALHA]", res.stdout, "Saida do validador deveria indicar [FALHA].")
        finally:
            if tmp_path.exists():
                tmp_path.unlink()

    def test_missing_db_config_graceful_handling(self) -> None:
        """Garante tratamento gracioso na ausencia de configuracao de banco, sem vazamento ou traceback desformatado."""
        script = PROJECT_ROOT / "scripts" / "validate_sql.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        env = os.environ.copy()
        for key in ["DATABASE_URL", "PGHOST", "PGPORT", "PGUSER", "PGPASSWORD", "PGDATABASE"]:
            env.pop(key, None)

        with tempfile.TemporaryDirectory() as empty_home:
            env["USERPROFILE"] = empty_home
            env["HOME"] = empty_home
            cmd = [PYTHON_EXE, str(script)]
            res = subprocess.run(cmd, env=env, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

            self.assertEqual(res.returncode, 1, "Deveria sair com codigo 1 quando a configuracao de banco inexiste.")
            self.assertIn("Falha de conexao com o banco de dados", res.stdout)
            self.assertNotIn("Traceback (most recent call last):", res.stdout, "Stacktrace bruto nao deve ser exposto.")

    def test_audit_publicacao_utf8_bom_handling(self) -> None:
        """Garante que audit_publicacao le arquivos codificados com UTF-8 BOM sem quebrar decodificacao."""
        script = PROJECT_ROOT / "scripts" / "audit_publicacao.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        # Montagem dinamica de padrao sensivel para nao ser detectado no proprio codigo de teste
        synthetic_pattern = "".join(["888", ".", "777", ".", "666", "-", "55"])
        test_file = PROJECT_ROOT / "docs" / "_tmp_test_bom_audit.md"
        try:
            test_file.write_bytes(
                f"\ufeff# Documento de Teste BOM\nRegistro com padrao formatado: {synthetic_pattern}\n".encode("utf-8")
            )
            cmd = [PYTHON_EXE, str(script)]
            res = subprocess.run(cmd, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

            self.assertEqual(res.returncode, 1, "audit_publicacao deveria retornar 1 ao detectar padrao em arquivo com BOM.")
            self.assertIn(synthetic_pattern, res.stdout, "audit_publicacao deveria ter identificado o padrao no arquivo com BOM.")
            self.assertNotIn("UnicodeDecodeError", res.stderr, "Nao deve ocorrer erro de decodificacao UTF-8.")
        finally:
            if test_file.exists():
                test_file.unlink()

    def test_relative_markdown_links_integrity(self) -> None:
        """Verifica que todos os links relativos em README.md e docs/*.md apontam para arquivos existentes."""
        md_files = [PROJECT_ROOT / "README.md"] + list((PROJECT_ROOT / "docs").glob("*.md"))
        link_pattern = re.compile(r"\[(?:[^\]]*)\]\(([^)]+)\)")
        broken_links: list[tuple[str, str, str]] = []

        for doc_path in md_files:
            if not doc_path.exists():
                continue
            content = doc_path.read_text(encoding="utf-8", errors="ignore")
            for match in link_pattern.finditer(content):
                target = match.group(1).strip()
                if target.startswith(("http://", "https://", "mailto:", "#")):
                    continue
                clean_target = target.split("#")[0].strip()
                if not clean_target:
                    continue

                resolved_path = (doc_path.parent / clean_target).resolve()
                if not resolved_path.exists():
                    broken_links.append((str(doc_path.relative_to(PROJECT_ROOT)), target, str(resolved_path)))

        self.assertEqual(
            len(broken_links),
            0,
            f"Links relativos quebrados encontrados:\n"
            + "\n".join(f"Em {doc}: '{target}' -> {resolved}" for doc, target, resolved in broken_links),
        )


class TestConsistencia(unittest.TestCase):
    """Esquema, grafo e índices batem entre si."""

    def test_esquema_so_tem_objetos_oficiais_do_pec(self) -> None:
        """Visões criadas numa instalação (stg_, vw_) não podem entrar no mapa publicado."""
        schema = json.loads((PROJECT_ROOT / "schema" / "schema.json").read_text(encoding="utf-8"))
        locais = [t["nome"] for t in schema if not t["nome"].startswith(PREFIXOS_OFICIAIS)]
        self.assertEqual(locais, [], f"Objetos fora dos prefixos oficiais do PEC: {locais[:10]}")
        paginas = {p.stem for p in (PROJECT_ROOT / "schema" / "tables").rglob("*.md")}
        self.assertEqual(paginas, {t["nome"] for t in schema}, "schema/tables desalinhado de schema.json")

    def test_visoes_do_repositorio_sao_embutidas_no_explain(self) -> None:
        """FROM/JOIN de visão definida em sql/ vira subconsulta; referência qualificada fica intacta."""
        sys.path.insert(0, str(PROJECT_ROOT / "scripts"))
        try:
            import validate_sql
        finally:
            sys.path.pop(0)
        views = {"stg_x": "SELECT 1 AS a"}
        self.assertEqual(
            validate_sql.inline_repo_views("SELECT s.a FROM stg_x s WHERE s.a = 1", views),
            "SELECT s.a FROM (SELECT 1 AS a) AS s WHERE s.a = 1",
        )
        self.assertEqual(
            validate_sql.inline_repo_views("SELECT stg_x.a FROM stg_x WHERE stg_x.a = 1", views),
            "SELECT stg_x.a FROM (SELECT 1 AS a) AS stg_x WHERE stg_x.a = 1",
        )
        self.assertEqual(
            validate_sql.inline_repo_views("SELECT 1 FROM t JOIN stg_x ON true", views),
            "SELECT 1 FROM t JOIN (SELECT 1 AS a) AS stg_x ON true",
        )

    def test_build_graph_output_integrity_and_fk_deduplication(self) -> None:
        """Valida que graph.json contem estrutura valida e zero arestas de Foreign Key duplicadas."""
        graph_path = PROJECT_ROOT / "graph" / "graph.json"
        self.assertTrue(graph_path.exists(), f"graph/graph.json nao encontrado: {graph_path}")

        data = json.loads(graph_path.read_text(encoding="utf-8"))
        self.assertIn("nodes", data, "graph.json nao contem chave 'nodes'")
        self.assertIn("links", data, "graph.json nao contem chave 'links'")
        self.assertGreater(len(data["nodes"]), 0, "Lista de nos vazia em graph.json")
        self.assertGreater(len(data["links"]), 0, "Lista de arestas vazia em graph.json")

        fk_edges: list[tuple[str, str]] = [
            (link["source"], link["target"]) for link in data["links"] if link.get("tipo") == "fk"
        ]
        unique_fk_edges = set(fk_edges)
        duplicate_fk_edges = [edge for edge in unique_fk_edges if fk_edges.count(edge) > 1]

        self.assertEqual(
            len(duplicate_fk_edges),
            0,
            f"Encontradas {len(duplicate_fk_edges)} arestas de FK duplicadas no graph.json: {duplicate_fk_edges[:5]}...",
        )

    def test_indices_match_sql_and_schema_counts(self) -> None:
        """Verifica se docs/indice_consultas.md e docs/indice_tabelas.md cobrem 100% das consultas e tabelas."""
        # 1. Validacao de consultas
        sql_files = sorted((PROJECT_ROOT / "sql").rglob("*.sql"))
        self.assertEqual(len(sql_files), 41, f"Esperado exatamente 41 arquivos SQL, encontrado {len(sql_files)}")

        indice_consultas = PROJECT_ROOT / "docs" / "indice_consultas.md"
        self.assertTrue(indice_consultas.exists(), f"docs/indice_consultas.md nao encontrado: {indice_consultas}")
        consultas_txt = indice_consultas.read_text(encoding="utf-8")

        for sql_file in sql_files:
            rel_path = sql_file.relative_to(PROJECT_ROOT).as_posix()
            self.assertIn(
                rel_path,
                consultas_txt,
                f"Consulta {rel_path} ausente de docs/indice_consultas.md",
            )

        # 2. Validacao de tabelas do esquema
        schema_path = PROJECT_ROOT / "schema" / "schema.json"
        self.assertTrue(schema_path.exists(), f"schema/schema.json nao encontrado: {schema_path}")
        schema_data = json.loads(schema_path.read_text(encoding="utf-8"))

        indice_tabelas = PROJECT_ROOT / "docs" / "indice_tabelas.md"
        self.assertTrue(indice_tabelas.exists(), f"docs/indice_tabelas.md nao encontrado: {indice_tabelas}")
        tabelas_txt = indice_tabelas.read_text(encoding="utf-8")

        for table in schema_data:
            table_name = table["nome"]
            self.assertIn(
                f"[{table_name}]",
                tabelas_txt,
                f"Tabela {table_name} presente em schema.json mas ausente de docs/indice_tabelas.md",
            )


class TestPublicacao(unittest.TestCase):
    """Nada pessoal, de ambiente ou credencial vai para o repositório."""

    def test_validador_le_conexao_so_do_ambiente(self) -> None:
        """O validador não pode ler arquivo de configuração de outras ferramentas."""
        fonte = (PROJECT_ROOT / "scripts" / "validate_sql.py").read_text(encoding="utf-8")
        for proibido in ("Path.home", "expanduser", "json.loads"):
            self.assertNotIn(proibido, fonte, f"validate_sql.py não deve ler configuração local ({proibido})")

    @unittest.skipUnless(TERMOS_PRIVADOS.exists(), "arquivo externo de termos privados ausente")
    def test_full_publication_audit_against_private_terms(self) -> None:
        """Executa auditoria contra arquivo externo de termos e valida 0 ocorrencias."""
        termos_path = TERMOS_PRIVADOS

        script = PROJECT_ROOT / "scripts" / "audit_publicacao.py"
        self.assertTrue(script.exists(), f"Script obrigatorio nao encontrado: {script}")

        env = os.environ.copy()
        env["ESUS_TERMOS_PRIVADOS"] = str(termos_path)

        cmd = [PYTHON_EXE, str(script)]
        res = subprocess.run(cmd, env=env, cwd=str(PROJECT_ROOT), capture_output=True, encoding="utf-8", errors="replace")

        self.assertEqual(
            res.returncode,
            0,
            f"audit_publicacao.py detectou termos privados no repositorio.\nAchados:\n{res.stdout}",
        )
        self.assertIn("achados: 0", res.stdout, "Deveriam ser reportados exatamente 0 achados.")

    def test_git_log_no_credentials_nor_ips(self) -> None:
        """Garante que git log -p sobre todo o historico nao contem IPs, credenciais nem termos privados."""
        res = subprocess.run(
            ["git", "log", "-p"],
            cwd=str(PROJECT_ROOT),
            capture_output=True,
            encoding="utf-8",
            errors="replace",
        )
        self.assertEqual(res.returncode, 0, f"Falha ao executar 'git log -p': {res.stderr}")

        git_log_text = res.stdout

        # Validacao de IPs (IPv4)
        ip_rx = re.compile(r"\b(?:\d{1,3}\.){3}\d{1,3}\b")
        leaked_ips = [m.group(0) for m in ip_rx.finditer(git_log_text)]
        self.assertEqual(
            len(leaked_ips),
            0,
            f"Enderecos IP encontrados no git log: {leaked_ips[:5]}",
        )

        # Validacao de credenciais literais (senhas/tokens que nao sejam placeholders documentados)
        cred_rx = re.compile(
            r"(password|senha|passwd|secret|token|api[_-]?key)\s*[:=]\s*(?!os\.|\"\.\.\.\"|<|\"...\")\S{4,}",
            re.I,
        )
        leaked_creds = [m.group(0) for m in cred_rx.finditer(git_log_text)]
        self.assertEqual(
            len(leaked_creds),
            0,
            f"Credenciais literais encontradas no git log: {leaked_creds[:5]}",
        )

        # Validacao de termos privados (arquivo externo ~/.esus-mapeamento-termos.txt)
        # Respeita os mesmos filtros de exclusao de audit_publicacao.py (vendor e viewer.html para termos de auditoria)
        termos_path = Path(os.environ.get("ESUS_TERMOS_PRIVADOS", Path.home() / ".esus-mapeamento-termos.txt"))
        private_patterns: list[tuple[str, re.Pattern]] = []
        if termos_path.exists():
            for line in termos_path.read_text(encoding="utf-8").splitlines():
                line = line.strip()
                if line and not line.startswith("#"):
                    private_patterns.append((line, re.compile(line, re.I)))

        # Quebra git_log_text por arquivo para respeitar a mesma exclusao de arquivos vendor/viewer.html de audit_publicacao.py
        file_chunks: dict[str, list[str]] = {}
        current_file = "commit_metadata"
        for line in git_log_text.splitlines():
            m_file = re.match(r"^diff --git a/(\S+) b/\S+", line)
            if m_file:
                current_file = m_file.group(1)
            file_chunks.setdefault(current_file, []).append(line)

        skip_prefixes = ("graph/vendor/", "vendor/")
        skip_files = {"viewer.html", "graph/viewer.html"}

        leaked_terms: list[str] = []
        for file_path, lines in file_chunks.items():
            if any(file_path.startswith(prefix) for prefix in skip_prefixes) or Path(file_path).name in skip_files:
                continue
            chunk_text = "\n".join(lines)
            for pat_str, rx in private_patterns:
                matches = [m.group(0) for m in rx.finditer(chunk_text)]
                if matches:
                    leaked_terms.extend([f"[{file_path}] /{pat_str}/: {m}" for m in matches])

        self.assertEqual(
            len(leaked_terms),
            0,
            f"Termos privados encontrados no historico do git log -p:\n" + "\n".join(leaked_terms[:10]),
        )


if __name__ == "__main__":
    unittest.main()
