# tb_lembrete

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lembrete` | `bigint` | sim | PK |
| 5 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 6 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 7 | `co_ultimo_lembrete_evolucao` | `bigint` | não | FK → tb_lembrete_evolucao |
| 8 | `co_prof_criador` | `bigint` | sim | FK → tb_prof |

Referenciada por: `tb_lembrete_evolucao`
