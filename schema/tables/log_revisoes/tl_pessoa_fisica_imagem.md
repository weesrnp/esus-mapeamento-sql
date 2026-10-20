# tl_pessoa_fisica_imagem

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_pessoa_fisica_imagem` | `bigint` | sim | PK |
| 2 | `im_icone` | `bytea` | não |  |
| 3 | `im_conteudo` | `bytea` | não |  |
| 4 | `tp_imagem` | `bigint` | não |  |
| 5 | `co_revisao` | `bigint` | sim | PK |
| 6 | `co_tipo_revisao` | `integer` | não |  |
| 7 | `co_cidadao` | `bigint` | não |  |
| 8 | `no_tipo_imagem` | `character varying(24)` | não |  |
