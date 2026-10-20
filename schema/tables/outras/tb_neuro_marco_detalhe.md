# tb_neuro_marco_detalhe

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_neuro_marco_detalhe` | `bigint` | sim | PK |
| 2 | `ds_titulo` | `character varying(255)` | não |  |
| 3 | `ds_marco` | `character varying(1100)` | não |  |
| 4 | `co_faixa_etaria` | `bigint` | não | FK → tb_neuro_faixa_etaria |

Referenciada por: `tb_neuro_marco`, `tb_neuro_marco_evolucao`
