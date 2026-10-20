# tl_qst_resposta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_qst_resposta` | `bigint` | sim | PK |
| 4 | `co_qst_questionario_respondido` | `bigint` | não |  |
| 5 | `co_qst_questionario_pergunta` | `bigint` | não |  |
| 6 | `tp_qst_resposta` | `integer` | não |  |
| 7 | `nu_resposta` | `integer` | não |  |
| 8 | `ds_resposta` | `character varying(800)` | não |  |
| 9 | `co_qst_opcao_pergunta` | `bigint` | não |  |
