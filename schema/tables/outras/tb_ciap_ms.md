# tb_ciap_ms

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ciap` | `bigint` | sim | PK |
| 2 | `ds_inclusao` | `character varying(400)` | não |  |
| 3 | `ds_exclusao` | `character varying(400)` | não |  |
| 4 | `ds_criterio` | `character varying(400)` | não |  |
| 5 | `ds_nota` | `character varying(400)` | não |  |
| 6 | `ds_definicao` | `character varying(400)` | não |  |
| 7 | `co_ciap_componente` | `bigint` | não | FK → tb_ciap_componente |
| 8 | `tp_ciap` | `bigint` | não | FK → tb_tipo_ciap |
| 9 | `co_ciap_capitulo` | `bigint` | não | FK → tb_ciap_capitulo |
| 10 | `ds_inclusao_filtro` | `character varying(400)` | não |  |
