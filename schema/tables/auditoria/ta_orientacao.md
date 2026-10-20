# ta_orientacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taorientacao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_orientacao` | `bigint` | não |  |
| 5 | `ds_orientacao` | `text` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_prontuario` | `bigint` | não |  |
