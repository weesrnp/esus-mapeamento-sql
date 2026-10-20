# tb_requisicao_exame

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_requisicao_exame` | `bigint` | sim | PK |
| 2 | `dt_requisicao` | `timestamp without time zone` | não |  |
| 3 | `dt_ultima_menstruacao` | `timestamp without time zone` | não |  |
| 4 | `ds_justificativa_procedimento` | `character varying(2000)` | não |  |
| 5 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 6 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 7 | `tp_exame` | `integer` | não |  |
| 8 | `ds_observacao` | `character varying(500)` | não |  |

Referenciada por: `tb_exame_requisitado`, `tb_sol_exame_citopatologico`, `tb_sol_exame_mamografia`
