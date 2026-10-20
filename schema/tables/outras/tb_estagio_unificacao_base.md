# tb_estagio_unificacao_base

Tipo: tabela  
Grupo: outras  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_estagio_unificacao_base` | `bigint` | sim | PK |
| 2 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
| 3 | `co_prof` | `bigint` | não |  |
| 4 | `co_cbo` | `bigint` | não |  |
| 5 | `co_unidade_saude` | `bigint` | não |  |
| 6 | `co_equipe` | `bigint` | não |  |
| 7 | `nu_cpf_prof_supervisor` | `character varying(11)` | não |  |
| 8 | `co_cbo_supervisor` | `bigint` | não |  |
| 9 | `co_unidade_saude_supervisor` | `bigint` | não |  |
| 10 | `co_equipe_supervisor` | `bigint` | não |  |
| 11 | `dt_inicio_vigencia` | `date` | não |  |
| 12 | `dt_fim_vigencia` | `date` | não |  |
| 13 | `ds_instituicao_ensino` | `character varying(255)` | não |  |
| 14 | `st_nivel_tecnico` | `integer` | não |  |
| 15 | `st_ativo` | `integer` | não |  |
| 16 | `st_importado` | `integer` | sim |  |
