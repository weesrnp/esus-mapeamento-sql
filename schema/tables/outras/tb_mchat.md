# tb_mchat

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_mchat` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `nu_pontuacao` | `integer` | sim |  |
| 5 | `co_mchat_r` | `bigint` | não |  |
| 6 | `st_is_mchat_rf` | `integer` | sim |  |

Referenciada por: `tb_mchat_aplicacao`
