# tb_perfil_recurso

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_perfil_recurso` | `bigint` | sim | PK |
| 2 | `co_perfil` | `bigint` | sim | FK → tb_perfil |
| 3 | `no_recurso` | `character varying(400)` | sim |  |
