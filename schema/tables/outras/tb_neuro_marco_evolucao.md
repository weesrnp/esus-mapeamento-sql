# tb_neuro_marco_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_neuro_marco_evolucao` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_marco_detalhe` | `bigint` | sim | FK → tb_neuro_marco_detalhe |
| 4 | `st_avaliado` | `character varying(32)` | sim |  |
| 5 | `nu_anos_idade_registro` | `integer` | não |  |
| 6 | `nu_meses_idade_registro` | `integer` | não |  |
| 7 | `co_unico_neuro_marco` | `bigint` | não |  |

Referenciada por: `tb_neuro_marco`
