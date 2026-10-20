# tl_cidadao_vinculacao_equipe

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cidadao_vinculacao_eqp` | `bigint` | sim | PK |
| 4 | `co_cidadao` | `bigint` | não |  |
| 5 | `co_unico_ficha` | `character varying(96)` | não |  |
| 6 | `co_unico_cadastro_individual` | `character varying(96)` | não |  |
| 7 | `st_envio` | `integer` | não |  |
| 8 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 9 | `st_usar_cadastro_individual` | `integer` | não |  |
| 10 | `st_saida_cadastro_obito` | `integer` | não |  |
| 11 | `st_saida_cadastro_territorio` | `integer` | não |  |
| 12 | `dt_atualizacao_cadastro` | `timestamp with time zone` | não |  |
| 13 | `co_prof_cadastrante_cds` | `bigint` | não |  |
| 14 | `co_lotacao_cadastrante_pec` | `bigint` | não |  |
| 15 | `tp_cds_origem` | `bigint` | não |  |
| 16 | `nu_cnes` | `character varying(7)` | não |  |
| 17 | `nu_ine` | `character varying(10)` | não |  |
