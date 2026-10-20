# tl_antecedente_ciap

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_prontuario` | `bigint` | sim | PK |
| 4 | `co_ciap` | `bigint` | sim | PK |
