# tb_guia_encaminhamento

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_encaminhamento` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_cbo` | `bigint` | sim | FK → tb_cbo |
| 5 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 6 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 7 | `co_classificacao_prioridade_cc` | `bigint` | sim | FK → tb_classificacao_prioridade_cc |
| 8 | `ds_discussao` | `text` | sim |  |
| 9 | `co_especialidade_esus_reg` | `bigint` | sim | FK → tb_especialidades_esus_reg |

Referenciada por: `tb_regulacao`
