# tb_lista_espera

Tipo: tabela  
Grupo: outras  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lista_espera` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 3 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 4 | `co_lista_espera_tipo_atend` | `bigint` | não | FK → tb_lista_espera_tipo_atend |
| 5 | `co_equipe` | `bigint` | não | FK → tb_equipe |
| 6 | `ds_motivo_espera` | `character varying(255)` | sim |  |
| 7 | `dt_entrada` | `timestamp without time zone` | sim |  |
| 8 | `dt_saida` | `timestamp without time zone` | não |  |
| 9 | `co_motivo_saida` | `bigint` | não | FK → tb_lista_espera_motivo_saida |
| 10 | `ds_observacao_saida` | `character varying(255)` | não |  |
| 11 | `nu_tentativas_contato` | `integer` | não |  |
| 12 | `co_tipo_servico` | `bigint` | não | FK → tb_tipo_servico |
| 13 | `st_ativo` | `integer` | sim |  |
| 14 | `co_cuidado_compartilhado_evol` | `bigint` | não | FK → tb_cuidado_compartilhado_evol |
