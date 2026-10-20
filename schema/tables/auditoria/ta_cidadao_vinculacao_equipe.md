# ta_cidadao_vinculacao_equipe

Tipo: tabela  
Grupo: auditoria  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadaovinculacaoequp` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cidadao_vinculacao_eqp` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `co_unico_ficha` | `character varying(96)` | não |  |
| 7 | `co_unico_cadastro_individual` | `character varying(96)` | não |  |
| 8 | `st_envio` | `integer` | não |  |
| 9 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 10 | `st_usar_cadastro_individual` | `integer` | não |  |
| 11 | `st_saida_cadastro_obito` | `integer` | não |  |
| 12 | `st_saida_cadastro_territorio` | `integer` | não |  |
| 13 | `dt_atualizacao_cadastro` | `timestamp with time zone` | não |  |
| 14 | `co_prof_cadastrante_cds` | `bigint` | não |  |
| 15 | `co_atorpapel_cadastrante_pec` | `bigint` | não |  |
| 16 | `tp_cds_origem` | `bigint` | não |  |
| 17 | `nu_cnes` | `character varying(7)` | não |  |
| 18 | `nu_ine` | `character varying(10)` | não |  |
