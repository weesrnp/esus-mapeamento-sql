# tl_cds_cidadao_resposta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_cad_individual` | `bigint` | não |  |
| 2 | `co_pergunta` | `bigint` | não |  |
| 3 | `co_pergunta_detalhe` | `bigint` | não |  |
| 4 | `st_resposta` | `integer` | não |  |
| 5 | `co_seq_cds_cidadao_resposta` | `bigint` | sim | PK |
| 6 | `ds_resposta` | `character varying(255)` | não |  |
| 7 | `co_revisao` | `bigint` | sim | PK |
| 8 | `co_tipo_revisao` | `integer` | não |  |
