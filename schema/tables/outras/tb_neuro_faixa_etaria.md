# tb_neuro_faixa_etaria

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_neuro_faixa_etaria` | `bigint` | sim | PK |
| 2 | `nu_dias_inicio` | `integer` | não |  |
| 3 | `nu_dias_fim` | `integer` | não |  |
| 4 | `ds_faixa_etaria` | `character varying(255)` | não |  |

Referenciada por: `tb_neuro_marco_detalhe`
