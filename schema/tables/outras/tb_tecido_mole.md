# tb_tecido_mole

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tecido_mole` | `bigint` | sim | PK |
| 2 | `co_atend_prof_odonto` | `bigint` | sim | FK → tb_atend_prof_odonto |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_parte_bucal` | `bigint` | não | FK → tb_parte_bucal |
| 5 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 6 | `ds_outro_sintomatologia` | `character varying(100)` | não |  |
| 7 | `co_evolucao_odonto` | `bigint` | não | FK → tb_evolucao_odonto |

Referenciada por: `rl_tecido_mole_lesao`
