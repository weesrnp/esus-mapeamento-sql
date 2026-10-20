# ta_estagio

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taestagio` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_ator_papel` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não |  |
| 6 | `co_unidade_saude` | `bigint` | não |  |
| 7 | `co_equipe` | `bigint` | não |  |
| 8 | `co_lotacao_supervisora` | `bigint` | não |  |
| 9 | `st_nivel_tecnico` | `integer` | não |  |
| 10 | `co_cbo` | `bigint` | não |  |
| 11 | `dt_inicio_vigencia` | `date` | não |  |
| 12 | `dt_fim_vigencia` | `date` | não |  |
| 13 | `ds_instituicao_ensino` | `character varying(255)` | não |  |
