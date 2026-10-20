# tb_token_redefinicao_senha

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_token_redefinicao_senha` | `bigint` | sim | PK |
| 2 | `ds_token` | `character varying(255)` | não |  |
| 6 | `co_usuario` | `bigint` | sim | FK → tb_usuario |
