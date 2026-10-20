# tb_historico_cabecalho

Tipo: tabela  
Grupo: outras  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_historico_cabecalho` | `bigint` | sim | PK |
| 2 | `co_unico_registro` | `character varying(255)` | não |  |
| 3 | `nu_cpf_cns_cidadao` | `character varying(15)` | não |  |
| 5 | `nu_cns_prof` | `character varying(15)` | não |  |
| 6 | `co_cbo` | `character varying(255)` | não |  |
| 7 | `nu_cnes_unid` | `character varying(50)` | não |  |
| 8 | `co_turno` | `bigint` | não |  |
| 9 | `nu_ine` | `character varying(255)` | não |  |
| 10 | `dt_atendimento` | `timestamp with time zone` | não |  |
| 11 | `co_tipo_atendimento` | `bigint` | não |  |
| 12 | `co_tipo_apresentacao` | `bigint` | não |  |
| 13 | `co_subtipo_atendimento` | `bigint` | não |  |
| 14 | `co_tipo_consulta` | `bigint` | não |  |
| 15 | `co_origem_atendimento` | `bigint` | não |  |
| 16 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 17 | `nu_cpf_estagiario` | `character varying(11)` | não |  |
| 18 | `co_cbo_estagiario` | `character varying(10)` | não |  |
| 19 | `st_retificado` | `integer` | não |  |

Referenciada por: `rl_historico_cabecalho`
