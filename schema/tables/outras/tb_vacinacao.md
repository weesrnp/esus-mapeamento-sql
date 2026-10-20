# tb_vacinacao

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_vacinacao` | `bigint` | sim | PK |
| 4 | `st_viajante` | `integer` | não |  |
| 5 | `st_comunicante_hanseniase` | `integer` | não |  |
| 6 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 7 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 8 | `no_condicao_maternal` | `character varying(20)` | não |  |

Referenciada por: `tb_registro_vacinacao`
