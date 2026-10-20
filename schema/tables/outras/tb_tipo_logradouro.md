# tb_tipo_logradouro

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_logradouro` | `bigint` | sim | PK |
| 2 | `nu_dne` | `character varying(3)` | sim |  |
| 3 | `no_tipo_logradouro` | `character varying(144)` | sim |  |
| 4 | `no_tipo_logradouro_filtro` | `character varying(144)` | sim |  |
| 5 | `co_tp_logradouro_cadsus` | `character varying(3)` | não |  |
| 6 | `nu_frequencia` | `bigint` | sim |  |
| 7 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_cds_aval_elegibilidade`, `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`, `tb_logradouro`, `tb_prof`, `tb_unidade_saude`
