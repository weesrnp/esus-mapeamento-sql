# tl_cds_prof

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_prof` | `bigint` | sim | PK |
| 2 | `nu_cns` | `character varying(16)` | não |  |
| 3 | `nu_ine` | `character varying(255)` | não |  |
| 4 | `nu_cbo_2002` | `character varying(10)` | não |  |
| 5 | `nu_cnes` | `character varying(255)` | não |  |
| 6 | `co_unico_cds_prof` | `character varying(40)` | não |  |
| 7 | `co_revisao` | `bigint` | sim | PK |
| 8 | `co_tipo_revisao` | `integer` | não |  |
