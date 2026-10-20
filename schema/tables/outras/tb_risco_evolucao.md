# tb_risco_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_risco_evolucao` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `st_ativo` | `integer` | sim |  |
| 4 | `st_evolucao_automatica` | `integer` | sim |  |
| 5 | `co_unico_risco` | `bigint` | sim |  |

Referenciada por: `tb_risco`
