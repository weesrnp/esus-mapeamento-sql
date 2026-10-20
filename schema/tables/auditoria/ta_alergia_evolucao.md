# ta_alergia_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taalergiaevolucao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_alergia_evolucao` | `bigint` | não |  |
| 5 | `co_unico_alergia` | `bigint` | não |  |
| 6 | `no_manifestacoes` | `character varying(800)` | não |  |
| 7 | `st_alergia_avaliada` | `integer` | não |  |
| 8 | `co_criticidade_alergia` | `bigint` | não |  |
| 9 | `co_atend_prof` | `bigint` | não |  |
| 10 | `co_tipo_reacao_alergia` | `bigint` | não |  |
| 11 | `co_grau_certeza_alergia` | `bigint` | não |  |
| 12 | `dt_inicio` | `date` | não |  |
| 13 | `ds_observacao` | `character varying(800)` | não |  |
| 14 | `st_substancia_cbara` | `smallint` | não |  |
