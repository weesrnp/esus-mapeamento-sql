# tb_cuidado_compartilhado_evol

Tipo: tabela  
Grupo: outras  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cuidado_compartlhd_evol` | `bigint` | sim | PK |
| 2 | `co_cuidado_compartilhado` | `bigint` | sim | FK → tb_cuidado_compartilhado |
| 3 | `co_conduta_cuidado_compartilhd` | `bigint` | não | FK → tb_conduta_cuidado_compartilhd |
| 4 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 5 | `dt_evolucao` | `timestamp without time zone` | sim |  |
| 6 | `ds_evolucao` | `text` | não |  |
| 7 | `co_unico_cuidado_evolucao` | `character varying(44)` | sim |  |
| 9 | `co_agendado` | `bigint` | não | FK → tb_agendado |
| 10 | `co_lotacao_afetada` | `bigint` | não | FK → tb_lotacao |
| 11 | `co_lotacao_executante` | `bigint` | não | FK → tb_lotacao |
| 12 | `ds_versao_transport` | `character varying(30)` | sim |  |
| 13 | `st_enviado` | `integer` | sim |  |
| 14 | `co_sequencial_evolucao` | `integer` | sim |  |
| 15 | `co_evolucao_anterior` | `bigint` | não | FK → tb_cuidado_compartilhado_evol |
| 16 | `co_classificacao_prioridade` | `bigint` | sim | FK → tb_classificacao_prioridade_cc |
| 17 | `co_reclassificacao_prioridade` | `bigint` | não | FK → tb_classificacao_prioridade_cc |
| 18 | `co_enviar_garantiaacesso` | `bigint` | não | FK → tb_conduta_cuidado_compartilhd |
| 19 | `co_cbo_executante` | `bigint` | sim | FK → tb_cbo |
| 20 | `co_unidade_saude_executante` | `bigint` | sim | FK → tb_unidade_saude |

Referenciada por: `tb_cuidado_compartilhado`, `tb_cuidado_compartilhado_evol`, `tb_lista_espera`
