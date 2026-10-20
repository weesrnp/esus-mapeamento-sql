# tb_pessoa_fisica_imagem

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_pessoa_fisica_imagem` | `bigint` | sim | PK |
| 2 | `im_icone` | `bytea` | não |  |
| 3 | `im_conteudo` | `bytea` | não |  |
| 5 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 6 | `no_tipo_imagem` | `character varying(24)` | não |  |
