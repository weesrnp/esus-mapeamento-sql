# tb_migracao

Tipo: tabela  
Grupo: outras  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `id` | `character varying(255)` | sim |  |
| 2 | `author` | `character varying(255)` | sim |  |
| 3 | `filename` | `character varying(255)` | sim |  |
| 4 | `dateexecuted` | `timestamp without time zone` | sim |  |
| 5 | `orderexecuted` | `integer` | sim |  |
| 6 | `exectype` | `character varying(10)` | sim |  |
| 7 | `md5sum` | `character varying(35)` | não |  |
| 8 | `description` | `character varying(255)` | não |  |
| 9 | `comments` | `character varying(255)` | não |  |
| 10 | `tag` | `character varying(255)` | não |  |
| 11 | `liquibase` | `character varying(20)` | não |  |
| 12 | `contexts` | `character varying(500)` | não |  |
| 13 | `labels` | `character varying(255)` | não |  |
| 14 | `deployment_id` | `character varying(10)` | não |  |
