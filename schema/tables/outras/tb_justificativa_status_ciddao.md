# tb_justificativa_status_ciddao

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_justifica_inativ_cidada` | `bigint` | sim | PK |
| 2 | `dt_justificativa` | `timestamp with time zone` | sim |  |
| 3 | `ds_justificativa` | `character varying(1000)` | sim |  |
| 4 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 5 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 6 | `st_cidadao` | `integer` | não |  |
| 7 | `co_usuario` | `bigint` | não | FK → tb_usuario |
