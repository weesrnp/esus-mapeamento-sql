# tl_qst_questionario_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_questionario_pergunta` | `bigint` | sim | PK |
| 4 | `ds_ordenacao` | `character varying(15)` | não |  |
| 5 | `co_qst_questionario` | `bigint` | não |  |
| 6 | `co_qst_pergunta` | `bigint` | não |  |
| 7 | `st_ativo` | `integer` | não |  |
