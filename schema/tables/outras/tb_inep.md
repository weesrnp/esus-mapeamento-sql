# tb_inep

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_inep` | `bigint` | sim | PK |
| 2 | `ds_inep` | `character varying(8)` | sim |  |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 4 | `no_estabelecimento` | `character varying(200)` | sim |  |

Referenciada por: `tb_atividade_coletiva`
