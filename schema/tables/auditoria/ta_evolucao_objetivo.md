# ta_evolucao_objetivo

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaoobjetivo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `ds_objetivo` | `text` | não |  |
| 6 | `st_necessidade_especial` | `integer` | não |  |
