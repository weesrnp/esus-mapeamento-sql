# tl_alergia_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_alergia_evolucao` | `bigint` | sim | PK |
| 4 | `co_unico_alergia` | `bigint` | não |  |
| 5 | `no_manifestacoes` | `character varying(800)` | não |  |
| 6 | `dt_instalacao` | `date` | não |  |
| 7 | `st_alergia_avaliada` | `integer` | não |  |
| 8 | `co_criticidade_alergia` | `bigint` | não |  |
| 9 | `no_evolucao` | `character varying(800)` | não |  |
| 10 | `co_atend_prof` | `bigint` | não |  |
