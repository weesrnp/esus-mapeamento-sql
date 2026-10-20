# tb_tipo_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tipo_unidade_saude` | `bigint` | sim | PK |
| 2 | `no_tipo_unidade_saude` | `character varying(120)` | sim |  |
| 3 | `co_tipo_unidade_cnes` | `bigint` | sim |  |

Referenciada por: `tb_subtipo_unidade_saude`, `tb_unidade_saude`
