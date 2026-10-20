# tl_qst_opcao_tipo_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_opcao_tipo_pergunta` | `bigint` | sim | PK |
| 4 | `no_qst_opcao_tipo_pergunta` | `character varying(255)` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
