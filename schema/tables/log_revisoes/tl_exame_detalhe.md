# tl_exame_detalhe

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_exame_detalhe` | `bigint` | sim | PK |
| 4 | `ds_exame_detalhe` | `character varying(255)` | não |  |
| 5 | `tp_opcao` | `bigint` | não |  |
| 6 | `sg_unidade_medida` | `character varying(25)` | não |  |
| 7 | `vl_comprimento` | `integer` | não |  |
| 8 | `vl_minimo` | `double precision` | não |  |
| 9 | `vl_maximo` | `double precision` | não |  |
| 10 | `vl_precisao_decimal` | `integer` | não |  |
