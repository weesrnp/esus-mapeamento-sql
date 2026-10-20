# tb_atividade_coletiva

Tipo: tabela  
Grupo: outras  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atividade_coletiva` | `bigint` | sim | PK |
| 2 | `co_tipo_atividade` | `bigint` | sim | FK → tb_tipo_atividade |
| 3 | `co_lotacao_responsavel` | `bigint` | sim | FK → tb_lotacao |
| 4 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 5 | `dt_atividade_coletiva` | `date` | sim |  |
| 6 | `dt_registro` | `timestamp without time zone` | sim |  |
| 7 | `co_turno` | `bigint` | sim | FK → tb_cds_turno |
| 8 | `nu_participantes` | `integer` | sim |  |
| 9 | `co_unidade_saude_local_ativ` | `bigint` | não | FK → tb_unidade_saude |
| 10 | `co_inep` | `bigint` | não | FK → tb_inep |
| 11 | `ds_outra_localidade` | `character varying(250)` | não |  |
| 12 | `st_pse_educacao` | `integer` | sim |  |
| 13 | `st_pse_saude` | `integer` | sim |  |
| 14 | `co_proced` | `bigint` | não | FK → tb_proced |
| 15 | `ds_anotacoes` | `text` | não |  |
| 16 | `co_unico_atividade_coletiva` | `character varying(44)` | sim |  |
| 17 | `ds_versao_transport` | `character varying(30)` | sim |  |
| 18 | `st_registro_enviado` | `integer` | sim |  |

Referenciada por: `rl_ativ_col_lot_env`, `rl_ativ_col_pratica_saude`, `rl_ativ_col_publico_alvo`, `rl_ativ_col_tema_reuniao`, `rl_ativ_col_tema_saude`, `tb_ativ_col_observacao_cidadao`, `tb_ativ_col_registro_particip`, `tb_ativ_col_unificacao_base`
