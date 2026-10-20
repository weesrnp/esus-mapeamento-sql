"""Gera grafo de dependências (consulta → tabela → FK), índices em Markdown e viewer 3D.

Entrada : schema/schema.json, sql/**/*.sql (cabeçalho escrito por harvest_sql.py)
Saída   : graph/graph.json, graph/viewer.html, docs/indice_consultas.md, docs/indice_tabelas.md
"""
from __future__ import annotations

import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IND = re.compile(r"\b(C[1-7]|B[1-6]|M[12])\b")


# Objetos citados pelas consultas que não existem no catálogo do PEC.
SUPPORT_OBJECTS: dict = {}


def read_header(path: Path) -> dict:
    meta, body = {}, []
    for line in path.read_text(encoding="utf-8").splitlines():
        m = re.match(r"-- (\w+): (.*)", line)
        if m and not body:
            meta[m.group(1)] = m.group(2).strip()
        elif line.strip():
            body.append(line)
    meta["tabelas"] = [t for t in meta.get("tabelas", "").split(", ") if t and t != "-"]
    meta["parametros"] = [p for p in meta.get("parametros", "").split(", ") if p and p != "-"]
    meta["corpo"] = "\n".join(body)
    return meta


def main() -> None:
    schema = {t["nome"]: t for t in json.loads((ROOT / "schema/schema.json").read_text("utf-8"))}
    queries = []
    for f in sorted((ROOT / "sql").rglob("*.sql")):
        m = read_header(f)
        m["arquivo"] = f.relative_to(ROOT).as_posix()
        # Busca indicadores no título, no campo explícito -- indicador: e nas primeiras linhas de contexto
        ind_sources = [m.get("titulo", ""), m.get("indicador", ""), m.get("tags", "")]
        if m.get("categoria") == "indicadores_cofinanciamento":
            ind_sources.append(m.get("corpo", "")[:300])
        extracted_inds = set()
        for src in ind_sources:
            extracted_inds.update(IND.findall(src.upper()))
        m["indicadores"] = sorted(extracted_inds)
        queries.append(m)

    nodes, links = {}, []
    use_count = defaultdict(int)
    for q in queries:
        qid = q["arquivo"]
        nodes[qid] = {"id": qid, "label": q["titulo"][:60], "tipo": "consulta", "grupo": q["categoria"]}
        for ind in q["indicadores"]:
            nodes.setdefault(ind, {"id": ind, "label": ind, "tipo": "indicador", "grupo": "indicador"})
            links.append({"source": qid, "target": ind, "tipo": "calcula"})
        for t in q["tabelas"]:
            use_count[t] += 1
            if t in schema or t in SUPPORT_OBJECTS:
                links.append({"source": qid, "target": t, "tipo": "usa"})
    for name in use_count:
        if name in schema:
            nodes[name] = {"id": name, "label": name, "tipo": "tabela", "grupo": schema[name]["grupo"]}
        elif name in SUPPORT_OBJECTS:
            nodes[name] = {
                "id": name,
                "label": name,
                "tipo": "tabela",
                "grupo": SUPPORT_OBJECTS[name]["grupo"],
            }
    seen_fk = set()
    for t in schema.values():
        if t["nome"] in nodes:
            for fk in t["fk"]:
                ref = fk["ref_tabela"]
                if ref in schema:
                    nodes.setdefault(ref, {"id": ref, "label": ref, "tipo": "tabela", "grupo": schema[ref]["grupo"]})
                    fk_edge = (t["nome"], ref)
                    if fk_edge not in seen_fk:
                        seen_fk.add(fk_edge)
                        links.append({"source": t["nome"], "target": ref, "tipo": "fk"})
    for n in nodes.values():
        n["peso"] = use_count.get(n["id"], 0)

    # Deduplicação estrita de arestas
    seen_links = set()
    unique_links = []
    for l in links:
        key = (l["source"], l["target"], l["tipo"])
        if key not in seen_links:
            seen_links.add(key)
            unique_links.append(l)
    links = unique_links

    graph = {"nodes": list(nodes.values()), "links": links}
    (ROOT / "graph").mkdir(exist_ok=True)
    (ROOT / "graph/graph.json").write_text(json.dumps(graph, ensure_ascii=False), encoding="utf-8")

    lib = (ROOT / "graph/vendor/3d-force-graph.min.js").read_text(encoding="utf-8")
    html = VIEWER.replace("/*LIB*/", lib).replace("/*DATA*/", json.dumps(graph, ensure_ascii=False))
    (ROOT / "graph/viewer.html").write_text(html, encoding="utf-8")

    docs = ROOT / "docs"
    docs.mkdir(exist_ok=True)
    by_cat = defaultdict(list)
    for q in queries:
        by_cat[q["categoria"]].append(q)
    out = ["# Índice de consultas", "",
           f"{len(queries)} consultas em {len(by_cat)} categorias. "
           "Tabelas marcadas com `*` não existem no esquema extraído.", ""]
    for cat, items in sorted(by_cat.items()):
        out += [f"## {cat}", "", "| Consulta | Indicador | Tabelas | Parâmetros |", "|---|---|---|---|"]
        for q in items:
            tabs = ", ".join(f"`{t}`" + ("" if t in schema else "*") for t in q["tabelas"])
            out.append(f"| [{q['titulo']}](../{q['arquivo']}) | {', '.join(q['indicadores']) or '-'} | "
                       f"{tabs} | {', '.join(f'`:{p}`' for p in q['parametros']) or '-'} |")
        out.append("")
    (docs / "indice_consultas.md").write_text("\n".join(out), encoding="utf-8")

    out = ["# Índice de tabelas", "",
           f"{len(schema)} objetos extraídos do catálogo. Coluna \"Consultas\" = quantas consultas do repositório usam a tabela.", ""]
    by_group = defaultdict(list)
    for t in schema.values():
        by_group[t["grupo"]].append(t)
    for g, items in sorted(by_group.items()):
        out += [f"## {g} ({len(items)})", "", "| Tabela | Colunas | PK | FKs | Consultas |", "|---|--:|---|--:|--:|"]
        for t in sorted(items, key=lambda x: (-use_count.get(x["nome"], 0), x["nome"])):
            out.append(f"| [{t['nome']}](../schema/tables/{g}/{t['nome']}.md) | {len(t['colunas'])} | "
                       f"{', '.join(t['pk']) or '-'} | {len(t['fk'])} | {use_count.get(t['nome'], 0)} |")
        out.append("")
    (docs / "indice_tabelas.md").write_text("\n".join(out), encoding="utf-8")

    missing = sorted({t for q in queries for t in q["tabelas"] if t not in schema})
    missing_documented = [t for t in missing if t in SUPPORT_OBJECTS]
    missing_undocumented = [t for t in missing if t not in SUPPORT_OBJECTS]
    unused = [n for n, t in schema.items() if t["grupo"] in ("fatos", "dimensoes") and not use_count.get(n)]

    print(f"nós={len(nodes)} arestas={len(links)} consultas={len(queries)}")
    print(
        f"tabelas citadas e ausentes do esquema: {len(missing)} "
        f"({len(missing_documented)} documentadas como apoio/data mart, {len(missing_undocumented)} não documentadas)"
    )
    for t in missing_documented:
        print(f"  - {t}: {SUPPORT_OBJECTS[t]['descricao']}")
    if missing_undocumented:
        for t in missing_undocumented:
            print(f"  - [ALERTA] {t}: ausente do esquema e não documentada!")
    print(f"fatos/dimensões sem nenhuma consulta: {len(unused)}")



VIEWER = """<!doctype html><html lang="pt-BR"><head><meta charset="utf-8">
<title>Mapa de consultas e tabelas</title>
<style>html,body{margin:0;height:100%;background:#0b0f19;color:#dbe4f0;font:13px system-ui}
#g{position:absolute;inset:0}#p{position:absolute;top:10px;left:10px;z-index:2;background:#111a2bcc;
padding:10px 12px;border-radius:8px;max-width:260px}input{width:100%;box-sizing:border-box;margin:6px 0;
padding:4px;background:#0b0f19;color:#dbe4f0;border:1px solid #2a3a57;border-radius:4px}
.k{display:inline-block;width:10px;height:10px;border-radius:50%;margin-right:5px}
label{display:block;margin:2px 0;cursor:pointer}</style></head><body>
<div id="p"><b>Consultas, tabelas e indicadores</b>
<input id="q" placeholder="buscar nó (ex.: tb_fat_vacinacao)">
<label><input type="checkbox" id="fk" checked style="width:auto"> mostrar relações FK</label>
<div id="leg"></div><div id="info" style="margin-top:8px;color:#8ea2c0"></div></div>
<div id="g"></div>
<script>/*LIB*/</script>
<script>
const DATA=/*DATA*/;
const COR={consulta:'#f5a623',indicador:'#e2536f',fatos:'#4aa3ff',dimensoes:'#52d6a4',
  cadastro_e_territorio:'#b48cff',fichas_cds:'#7ac7c7',visoes:'#c8d36a',outras:'#8a94a6'};
const cor=n=>COR[n.tipo==='tabela'?n.grupo:n.tipo]||'#8a94a6';
document.getElementById('leg').innerHTML=Object.entries(COR).map(([k,v])=>
  `<div><span class="k" style="background:${v}"></span>${k}</div>`).join('');
const el=document.getElementById('g');
const G=ForceGraph3D()(el).backgroundColor('#0b0f19').graphData(DATA)
 .nodeLabel(n=>`${n.tipo}: ${n.label}`).nodeColor(cor)
 .nodeVal(n=>n.tipo==='tabela'?2+n.peso*1.5:n.tipo==='indicador'?8:2)
 .linkColor(l=>l.tipo==='fk'?'#2f4468':l.tipo==='calcula'?'#e2536f':'#6b7c99')
 .linkOpacity(.5).linkWidth(l=>l.tipo==='fk'?0:.6)
 .onNodeClick(n=>{const d=1+n.x?Math.hypot(n.x,n.y,n.z):1,r=1+120/d;
   G.cameraPosition({x:n.x*r,y:n.y*r,z:n.z*r},n,800);
   document.getElementById('info').textContent=`${n.tipo} · ${n.label} · usos: ${n.peso}`;});
document.getElementById('q').oninput=e=>{const v=e.target.value.toLowerCase();
  G.nodeColor(n=>!v||n.id.toLowerCase().includes(v)||n.label.toLowerCase().includes(v)?cor(n):'#243044');};
document.getElementById('fk').onchange=e=>{
  G.graphData({nodes:DATA.nodes,links:DATA.links.filter(l=>e.target.checked||l.tipo!=='fk')});};
</script></body></html>"""

if __name__ == "__main__":
    main()
