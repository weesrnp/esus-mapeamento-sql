# tb_migracao_trava

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `id` | `integer` | sim | PK |
| 2 | `locked` | `boolean` | sim |  |
| 3 | `lockgranted` | `timestamp without time zone` | não |  |
| 4 | `lockedby` | `character varying(255)` | não |  |
