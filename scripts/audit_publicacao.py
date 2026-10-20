"""Varre o repositório atrás de termos que não devem ser publicados.

Regras genéricas (CPF/CNS, IP, credencial, caminho local, código de equipe) ficam aqui.
Termos específicos (nomes, municípios etc.) ficam FORA do repositório, em um arquivo
de regex, um por linha, apontado por ESUS_TERMOS_PRIVADOS ou, por padrão,
~/.esus-mapeamento-termos.txt.

Sai com código 1 se encontrar algo. Ignora .venv, .git, build e graph/vendor.
O graph/viewer.html embute a biblioteca 3D e é conferido via graph.json.
"""
from __future__ import annotations

import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SKIP = {".venv", ".git", "build", "vendor", "__pycache__", ".agents"}
SKIP_FILES = {"viewer.html"}
TEXT = {".md", ".sql", ".py", ".json", ".html", ".txt", ".yml", ".yaml", ".toml", ""}

REGRAS = {
    "cpf formatado": re.compile(r"\b\d{3}\.\d{3}\.\d{3}-\d{2}\b"),
    "cns/cpf literal": re.compile(r"(?<![\d_])(?!12345678901\b|00000000000\b)\d{11}(?!\d)|(?<![\d_])\d{15}(?!\d)"),
    "ip": re.compile(r"\b(?:\d{1,3}\.){3}\d{1,3}\b"),
    "credencial": re.compile(r"(password|senha|passwd|secret|token|api[_-]?key)\s*[:=]\s*(?!os\.|\"\.\.\.\"|<)\S{4,}", re.I),
    "ine literal": re.compile(r"'0000(?!000000)\d{6}'"),
    "caminho local": re.compile(r"[A-Z]:\\(?:Users|Projetos|reverse)\\", re.I),
}


def termos_privados() -> dict[str, re.Pattern]:
    f = Path(os.environ.get("ESUS_TERMOS_PRIVADOS", Path.home() / ".esus-mapeamento-termos.txt"))
    if not f.exists():
        print(f"aviso: {f} não existe; só regras genéricas foram aplicadas")
        return {}
    linhas = [x.strip() for x in f.read_text(encoding="utf-8").splitlines()]
    return {f"termo privado /{x}/": re.compile(x, re.I) for x in linhas if x and not x.startswith("#")}


def main() -> int:
    regras = {**REGRAS, **termos_privados()}
    achados = 0
    for p in sorted(ROOT.rglob("*")):
        rel = p.relative_to(ROOT)
        if not p.is_file() or SKIP & set(rel.parts) or p.name in SKIP_FILES or p.suffix.lower() not in TEXT:
            continue
        txt = p.read_text(encoding="utf-8", errors="ignore")
        for nome, rx in regras.items():
            for m in rx.finditer(txt):
                linha = txt.count("\n", 0, m.start()) + 1
                print(f"{rel}:{linha}  [{nome}]  {m.group(0)[:40]}")
                achados += 1
    print(f"achados: {achados}")
    return 1 if achados else 0


if __name__ == "__main__":
    sys.exit(main())
