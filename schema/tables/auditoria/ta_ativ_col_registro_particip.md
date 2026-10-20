# ta_ativ_col_registro_particip

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taativcolregistropartcp` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_registro_participante` | `bigint` | não |  |
| 5 | `co_atividade_coletiva` | `bigint` | não |  |
| 6 | `co_cidadao` | `bigint` | não |  |
| 7 | `co_cidadao_participante` | `bigint` | não |  |
| 8 | `nu_peso` | `double precision` | não |  |
| 9 | `nu_altura` | `double precision` | não |  |
| 10 | `st_avaliacao_alterada` | `integer` | não |  |
| 11 | `st_cessou_habito_fumar` | `integer` | não |  |
| 12 | `st_abandonou_grupo` | `integer` | não |  |
