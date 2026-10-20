# tb_exame_detalhe

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_detalhe` | `bigint` | sim | PK |
| 2 | `ds_exame_detalhe` | `character varying(255)` | não |  |
| 3 | `tp_opcao` | `bigint` | não | FK → tb_tipo_opcao |
| 4 | `sg_unidade_medida` | `character varying(25)` | não |  |
| 5 | `vl_comprimento` | `integer` | não |  |
| 6 | `vl_minimo` | `double precision` | não |  |
| 7 | `vl_maximo` | `double precision` | não |  |
| 8 | `vl_precisao_decimal` | `integer` | não |  |

Referenciada por: `rl_proced_exame_detalhe`
