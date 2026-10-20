# tb_visita_domiciliar_acs

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_visita_domiciliar_acs` | `bigint` | sim | PK |
| 2 | `co_unico_visita_domiciliar` | `character varying(96)` | sim |  |
| 3 | `co_unico_domicilio` | `character varying(96)` | sim |  |
| 4 | `ds_anotacao` | `character varying(1000)` | não |  |
| 5 | `co_tipo_visita` | `integer` | sim |  |
