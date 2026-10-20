# tl_qst_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_pergunta` | `bigint` | sim | PK |
| 4 | `no_qst_pergunta` | `character varying(800)` | não |  |
| 5 | `tp_opcao_pergunta` | `bigint` | não |  |
