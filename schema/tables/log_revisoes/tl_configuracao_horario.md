# tl_configuracao_horario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_periodo` | `bigint` | sim | PK |
| 2 | `hora_inicial_primeiro_periodo` | `character varying(10)` | não |  |
| 3 | `hora_final_primeiro_periodo` | `character varying(10)` | não |  |
| 4 | `hora_inicial_segundo_periodo` | `character varying(10)` | não |  |
| 5 | `hora_final_segundo_periodo` | `character varying(10)` | não |  |
| 6 | `hora_inicial_terceiro_periodo` | `character varying(10)` | não |  |
| 7 | `hora_final_terceiro_periodo` | `character varying(10)` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
| 9 | `co_revisao` | `bigint` | sim | PK |
| 10 | `co_tipo_revisao` | `integer` | não |  |
| 11 | `tempo_duracao_consulta` | `integer` | não |  |
| 12 | `hora_inicial_quarto_periodo` | `character varying(10)` | não |  |
| 13 | `hora_final_quarto_periodo` | `character varying(10)` | não |  |
| 14 | `hora_inicial_atend_unidade` | `character varying(10)` | não |  |
| 15 | `hora_final_atend_unidade` | `character varying(10)` | não |  |
