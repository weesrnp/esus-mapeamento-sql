# tb_lista_medicamento

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_lista_medicamento` | `bigint` | sim | PK |
| 2 | `tp_lista_medicamento` | `character varying(100)` | não |  |
| 3 | `tp_receita` | `bigint` | não | FK → tb_tipo_receita |
| 4 | `nu_dias_validade` | `integer` | não |  |
| 5 | `ds_lista_medicamento` | `character varying(100)` | não |  |

Referenciada por: `tb_principio_ativo`
