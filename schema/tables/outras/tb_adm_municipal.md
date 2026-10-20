# tb_adm_municipal

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ator_papel` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 4 | `ds_autorizacao` | `character varying(225)` | não |  |
| 5 | `st_instalacao_terminada` | `integer` | não |  |
| 6 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 7 | `dt_adicao` | `timestamp without time zone` | não |  |

Referenciada por: `tb_cfg_certificado`
