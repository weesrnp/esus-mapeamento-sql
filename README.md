<p align="center">
  <img src="docs/img/capa.svg" alt="esus-mapeamento-sql: mapa do banco PostgreSQL do e-SUS APS PEC 5.5.28 e catálogo de consultas SQL" width="100%">
</p>

<p align="center">
  <img alt="e-SUS APS PEC 5.5.28" src="https://img.shields.io/badge/e--SUS%20APS%20PEC-5.5.28-0a7d5a">
  <img alt="PostgreSQL 9.6 a 16" src="https://img.shields.io/badge/PostgreSQL-9.6%20a%2016-336791?logo=postgresql&logoColor=white">
  <img alt="Python 3.11+" src="https://img.shields.io/badge/Python-3.11%2B-3776AB?logo=python&logoColor=white">
  <img alt="psycopg 3" src="https://img.shields.io/badge/psycopg-3-4a6390">
  <img alt="sqlglot" src="https://img.shields.io/badge/sqlglot-30%2B-4a6390">
  <img alt="3d-force-graph" src="https://img.shields.io/badge/3d--force--graph-1.73-000000?logo=threedotjs&logoColor=white">
  <img alt="Licença MIT" src="https://img.shields.io/badge/licen%C3%A7a-MIT-green">
</p>

Criei este repositório para facilitar o trabalho com o banco de dados do e-SUS APS, o prontuário eletrônico usado nas unidades básicas de saúde do SUS.

Ele tem duas partes. A primeira é um mapa de todas as tabelas do sistema, com o que cada coluna guarda e como as tabelas se ligam. A segunda são consultas SQL prontas para tarefas do dia a dia da Atenção Primária, como encontrar quem precisa de busca ativa, acompanhar a vacinação, arrumar o cadastro e calcular os indicadores que entram no repasse federal.

Nenhum dado de paciente foi usado: o mapa vem só da estrutura do banco, e as consultas foram testadas no PostgreSQL 9.6 e no 16.

## Sumário

- [O que tem no repositório](#o-que-tem-no-repositório)
- [Consultas SQL](#consultas-sql)
- [Mapa do esquema](#mapa-do-esquema)
- [Grafo 3D](#grafo-3d)
- [Stack](#stack)
- [Estrutura de pastas](#estrutura-de-pastas)
- [Como usar](#como-usar)
- [Rodando uma consulta](#rodando-uma-consulta)
- [Privacidade e segurança](#privacidade-e-segurança)
- [Limitações conhecidas](#limitações-conhecidas)
- [Documentação](#documentação)
- [Licença](#licença)

## O que tem no repositório

| Item | Quantidade | Onde |
|---|--:|---|
| Tabelas do PEC 5.5.28 | 1.180 | [`schema/tables/`](schema/tables) |
| Visões materializadas (`mv_`) | 6 | [`schema/tables/visoes/`](schema/tables/visoes) |
| Colunas descritas | 10.648 | [`schema/schema.json`](schema/schema.json) |
| Chaves estrangeiras | 1.668 | [`schema/schema.json`](schema/schema.json) |
| Consultas SQL | 41, em 5 categorias | [`sql/`](sql) |
| Armadilhas do banco documentadas | 16 | [`docs/armadilhas.md`](docs/armadilhas.md) |
| Nós e arestas do grafo | 158 e 538 | [`graph/`](graph) |
| Testes automatizados | 15 | [`tests/`](tests) |

Cada tabela tem uma página própria com colunas, tipos, obrigatoriedade, chave primária e para onde aponta cada chave estrangeira. Os índices em [`docs/`](docs) são gerados a partir dos arquivos, então não ficam desatualizados em relação ao código.

## Consultas SQL

| Categoria | Consultas | Conteúdo |
|---|--:|---|
| [`indicadores_cofinanciamento`](sql/indicadores_cofinanciamento) | 12 | Cálculo por equipe e conferência nominal de indicadores do cofinanciamento federal da APS |
| [`busca_ativa`](sql/busca_ativa) | 12 | Listas nominais de quem está sem o acompanhamento esperado: gestantes, hipertensos, diabéticos, rastreamento de câncer do colo do útero, M-CHAT, Bolsa Família |
| [`imunizacao`](sql/imunizacao) | 8 | Doses aplicadas, cobertura do esquema básico, atraso vacinal, abandono D1 x D3, lotes perto do vencimento, doses inválidas |
| [`cadastro_e_territorio`](sql/cadastro_e_territorio) | 7 | Cadastro individual vencido, CPF duplicado, produção de ACS por desfecho, munícipes atendidos sem cadastro territorial, validação de CNS |
| [`modelagem_dw`](sql/modelagem_dw) | 2 | Padrões de junção no Data Warehouse do PEC e DDL de uma camada de staging |

Indicadores com consulta própria no catálogo: C1 (mais acesso), C3 (pré-natal), C4 (diabetes), C5 (hipertensão), C7 (rastreamento do câncer do colo do útero), B3 (exodontia) e M1 (atendimentos da eMulti), além da dimensão cadastro do vínculo. As regras de C1, C3, C4, C7, B3, M1 e do vínculo foram conferidas com as notas metodológicas do Ministério da Saúde. A lista completa, com tabelas e parâmetros de cada consulta, está em [`docs/indice_consultas.md`](docs/indice_consultas.md).

Todo arquivo começa com um cabeçalho padronizado, que o gerador de índices e do grafo lê:

```sql
-- titulo: Indicador C5: Validação Nominal por Pessoa (Hipertensão)
-- categoria: indicadores_cofinanciamento
-- indicador: C5
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_dim_equipe, ...
-- parametros: cpf, fim, ine_1, ine_2, ine_3, ini12, ini6
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: DISTINCT ON sem ORDER BY no CTE alvo; a prática B só olha o atendimento individual
```

A linha `limitacoes` diz onde a consulta simplifica a regra oficial. Leia antes de usar o número em relatório.

## Mapa do esquema

As tabelas estão agrupadas pelo prefixo e pelo papel no banco:

| Grupo | Tabelas | O que guarda |
|---|--:|---|
| [`fatos`](schema/tables/fatos) | 54 | Fatos do Data Warehouse (`tb_fat_*`) |
| [`dimensoes`](schema/tables/dimensoes) | 95 | Dimensões do Data Warehouse (`tb_dim_*`) |
| [`fichas_cds`](schema/tables/fichas_cds) | 43 | Fichas da Coleta de Dados Simplificada (`tb_cds_*`) |
| [`cadastro_e_territorio`](schema/tables/cadastro_e_territorio) | 10 | Cidadão, domicílio e vínculo com a equipe |
| [`outras`](schema/tables/outras) | 440 | Demais tabelas `tb_` do prontuário |
| [`relacionamentos`](schema/tables/relacionamentos) | 89 | Tabelas de ligação (`rl_`) |
| [`log_revisoes`](schema/tables/log_revisoes) | 256 | Histórico de revisões Envers (`tl_`) |
| [`auditoria`](schema/tables/auditoria) | 193 | Trilha de auditoria por trigger (`ta_`) |
| [`visoes`](schema/tables/visoes) | 6 | Visões materializadas (`mv_`) |

O extrator só considera os prefixos oficiais do PEC (`tb_`, `tl_`, `ta_`, `rl_`, `mv_`). Visões criadas numa instalação específica, como `stg_*` e `vw_*`, ficam de fora para o mapa descrever o produto. O índice completo está em [`docs/indice_tabelas.md`](docs/indice_tabelas.md).

## Grafo 3D

[`graph/viewer.html`](graph/viewer.html) mostra as consultas, as tabelas que cada uma usa, as chaves estrangeiras entre essas tabelas e os indicadores que elas calculam. O arquivo traz a biblioteca embutida e abre direto no navegador, sem servidor e sem internet.

![Grafo 3D de consultas, tabelas e indicadores](docs/img/grafo-3d.png)

Clique num nó para levar a câmera até ele. A caixa de busca destaca tabelas pelo nome, e a caixa de seleção liga ou desliga as relações de chave estrangeira.

## Stack

| Camada | Tecnologia | Uso |
|---|---|---|
| Banco | PostgreSQL 9.6 a 16 | Banco do e-SUS APS PEC; leitura do catálogo (`pg_catalog`, `information_schema`) e `EXPLAIN` |
| Scripts | Python 3.11+ | Extração, coleta, validação, geração e auditoria |
| Driver | [psycopg 3](https://www.psycopg.org/psycopg3/) | Conexão somente leitura ao PostgreSQL |
| Parser SQL | [sqlglot](https://github.com/tobymao/sqlglot) | Leitura das consultas no dialeto `postgres` e troca de literais por parâmetros |
| Visualização | [3d-force-graph](https://github.com/vasturiano/3d-force-graph) (Three.js/WebGL) | Grafo 3D embutido num HTML estático |
| Testes | `unittest` e Node.js (opcional) | Consistência entre esquema, índices e grafo; sintaxe do JavaScript do visualizador |

## Estrutura de pastas

```
esus-mapeamento-sql/
├── sql/                     consultas, uma pasta por categoria
├── schema/
│   ├── schema.json          esquema completo em JSON
│   └── tables/<grupo>/      uma página Markdown por tabela
├── graph/
│   ├── graph.json           nós e arestas
│   ├── viewer.html          visualizador 3D (offline)
│   └── vendor/              biblioteca 3d-force-graph
├── docs/                    índices, armadilhas, histórico de alterações e imagens
├── scripts/
│   ├── extract_schema.py    extrai o esquema do catálogo do sistema
│   ├── harvest_sql.py       recolhe consultas de notas em Markdown
│   ├── validate_sql.py      roda EXPLAIN em todas as consultas
│   ├── build_graph.py       gera grafo, visualizador e índices
│   └── audit_publicacao.py  procura dado pessoal e segredo antes de publicar
└── tests/                   testes; os que dependem de banco são pulados sem conexão
```

## Como usar

Você precisa de Python 3.11 ou mais novo e, para extrair o esquema ou validar as consultas, de um usuário com permissão de leitura num banco do e-SUS PEC (PostgreSQL 9.6 ou mais novo). Para só consultar o mapa e o catálogo, nada disso é necessário: basta navegar pelas pastas ou abrir o `viewer.html`.

### 1. Ambiente

Windows (PowerShell):

```powershell
git clone https://github.com/weesrnp/esus-mapeamento-sql.git
cd esus-mapeamento-sql
py -3 -m venv .venv
.venv\Scripts\python.exe -m pip install -r requirements.txt
```

Linux ou macOS:

```bash
git clone https://github.com/weesrnp/esus-mapeamento-sql.git
cd esus-mapeamento-sql
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

### 2. Conexão

Os scripts leem a conexão só das variáveis do libpq (`PGHOST`, `PGPORT`, `PGDATABASE`, `PGUSER`, `PGPASSWORD`) ou de `DATABASE_URL`. Nada é lido de arquivo de configuração nem gravado em disco.

```powershell
$env:PGHOST="servidor"; $env:PGPORT="5433"; $env:PGDATABASE="esus"
$env:PGUSER="usuario_leitura"; $env:PGPASSWORD="..."
```

### 3. Extrair o esquema, gerar o grafo e validar

```powershell
.venv\Scripts\python.exe scripts\extract_schema.py   # lê só o catálogo do sistema
.venv\Scripts\python.exe scripts\build_graph.py      # grafo, visualizador e índices
.venv\Scripts\python.exe scripts\validate_sql.py     # EXPLAIN em cada consulta, sem ler linhas
```

O validador abre a sessão com `default_transaction_read_only = on` e `statement_timeout = 30000` e mostra o status de cada arquivo. Com `--report relatorio.json` ou `--report-md relatorio.md`, grava o relatório em arquivo; `--file` valida uma consulta só.

### 4. Testes

```powershell
.venv\Scripts\python.exe -m unittest discover -s tests -v
```

Num clone limpo, os testes que precisam de banco, de Node.js ou do arquivo de termos privados são pulados.

### Recolher consultas de notas em Markdown

```powershell
.venv\Scripts\python.exe scripts\harvest_sql.py --out sql PASTA_OU_ARQUIVO.md
```

O coletor lê os blocos ```` ```sql ````, troca literais que identificam equipe ou município por parâmetros (`:ine_1`) e descarta blocos com CPF, CNS, IP ou segredo.

## Rodando uma consulta

Os parâmetros são variáveis do `psql` (`:nome`) e entram com `-v`. Datas vão no formato `YYYYMMDD`, o mesmo de `co_dim_tempo`. Dentro dos arquivos, o código INE aparece entre aspas (`:'ine_1'`) para não perder os zeros à esquerda.

```bash
PGOPTIONS="-c default_transaction_read_only=on -c statement_timeout=30000" \
psql -v fim=20260831 -v ine_1=0000000000 \
     -f sql/busca_ativa/02_mulheres_de_25_a_64_anos_sem_rastreamento_do_colo_do_utero.sql
```

Em outros clientes (DBeaver, pgAdmin), troque os parâmetros pelos valores antes de executar.

## Privacidade e segurança

- Rode tudo em conexão somente leitura, com `statement_timeout` de 30 segundos. Nenhum script escreve no banco.
- As listas nominais devolvem nome e CPF ou CNS mascarados e não trazem endereço, telefone, nome da mãe nem NIS. Trate o resultado conforme a LGPD e não acrescente esses campos à saída.
- O repositório não contém dados de pacientes, nomes de pessoas ou de municípios, endereços de rede nem credenciais.
- Antes de publicar um fork ou uma alteração, rode a auditoria e só publique com saída zerada:

```powershell
.venv\Scripts\python.exe scripts\audit_publicacao.py
```

O script procura CPF, CNS, IP, credencial, caminho local e código de equipe. Termos específicos da sua instalação, como nomes de pessoas e do município, ficam num arquivo de expressões regulares fora do repositório, apontado pela variável `ESUS_TERMOS_PRIVADOS`.

## Limitações conhecidas

- O mapa descreve o PEC 5.5.28. Em versões anteriores ou posteriores, algumas tabelas e colunas podem não existir; rode `extract_schema.py` e `validate_sql.py` no seu banco antes de confiar numa consulta.
- Códigos de tipo de atendimento, desfecho de visita e tipo de saída do cadastro mudam entre versões. As consultas leem esses valores pela descrição da dimensão, mas vale conferir na sua instalação.
- A consulta [`04_funcao_pl_pgsql_no_postgresql.sql`](sql/cadastro_e_territorio/04_funcao_pl_pgsql_no_postgresql.sql) cria a função `fn_validar_cns`. Por ser DDL, não roda em sessão somente leitura e fica marcada como `status: revisar`; use um banco de apoio.
- Os indicadores calculados aqui servem para monitoramento e conferência local. O resultado oficial é o que o Ministério da Saúde publica a partir dos dados enviados ao SISAB.

## Documentação

- [Índice de consultas](docs/indice_consultas.md): título, indicador, tabelas e parâmetros de cada SQL
- [Índice de tabelas](docs/indice_tabelas.md): as 1.186 páginas do esquema, por grupo
- [Armadilhas do banco](docs/armadilhas.md): 16 pontos que costumam gerar número errado, como datas guardadas como inteiro, explosão de linhas entre subfatos e várias linhas da mesma pessoa no DW
- [Histórico de alterações](docs/CHANGELOG.md)

## Licença

[MIT](LICENSE). O esquema descrito pertence ao e-SUS APS, software do Ministério da Saúde. Este repositório não distribui o software nem dados, e não tem vínculo com o Ministério da Saúde.
