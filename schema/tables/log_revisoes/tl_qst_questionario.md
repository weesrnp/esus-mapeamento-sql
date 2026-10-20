# tl_qst_questionario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_questionario` | `bigint` | sim | PK |
| 4 | `ds_questionario` | `character varying(255)` | não |  |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `tp_qst_questionario` | `integer` | não |  |
| 7 | `nu_idade_meses_limite_inferior` | `integer` | não |  |
| 8 | `nu_idade_meses_limite_superior` | `integer` | não |  |
