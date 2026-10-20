# tl_qst_opcao_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_opcao_pergunta` | `bigint` | sim | PK |
| 4 | `co_qst_pergunta` | `bigint` | não |  |
| 5 | `co_qst_opcao_tipo_pergunta` | `bigint` | não |  |
| 6 | `co_qst_orientacao_prof` | `bigint` | não |  |
