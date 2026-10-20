# tl_qst_associacao_opcao_pergnt

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_associacao_pergunta` | `bigint` | sim | PK |
| 4 | `co_qst_opcao_pergunta` | `bigint` | sim | PK |
