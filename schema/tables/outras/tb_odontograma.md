# tb_odontograma

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_odontograma` | `bigint` | sim | PK |
| 2 | `co_atend_prof_odonto` | `bigint` | não | FK → tb_atend_prof_odonto |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `st_protese_total_superior` | `integer` | não |  |
| 5 | `st_protese_total_inferior` | `integer` | não |  |
| 6 | `st_contencao` | `integer` | não |  |
| 7 | `st_aparelho` | `integer` | não |  |

Referenciada por: `tb_evolucao_dente`
