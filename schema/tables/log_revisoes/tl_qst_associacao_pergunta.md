# tl_qst_associacao_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_associacao_pergunta` | `bigint` | sim | PK |
| 4 | `co_qst_questionario_pergunta` | `bigint` | não |  |
| 5 | `co_qst_qst_pergunta_associacao` | `bigint` | não |  |
| 6 | `co_opcao_pergunta` | `bigint` | não |  |
