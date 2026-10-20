# tb_nacionalidade

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_nacionalidade` | `bigint` | sim | PK |
| 2 | `no_nacionalidade` | `character varying(15)` | sim |  |
| 3 | `no_identificador` | `character varying(15)` | sim |  |
| 4 | `co_nacionalidade_cadsus` | `character varying(1)` | não |  |

Referenciada por: `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cidadao`
