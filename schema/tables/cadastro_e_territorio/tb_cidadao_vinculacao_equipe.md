# tb_cidadao_vinculacao_equipe

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_vinculacao_eqp` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 3 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 4 | `co_unico_cadastro_individual` | `character varying(96)` | não |  |
| 5 | `st_envio` | `integer` | sim |  |
| 6 | `ds_versao_ficha` | `character varying(30)` | sim |  |
| 7 | `st_usar_cadastro_individual` | `integer` | não |  |
| 8 | `st_saida_cadastro_obito` | `integer` | não |  |
| 9 | `st_saida_cadastro_territorio` | `integer` | não |  |
| 10 | `dt_atualizacao_cadastro` | `timestamp with time zone` | sim |  |
| 11 | `co_prof_cadastrante_cds` | `bigint` | não | FK → tb_cds_prof |
| 12 | `co_atorpapel_cadastrante_pec` | `bigint` | não | FK → tb_ator_papel |
| 13 | `tp_cds_origem` | `bigint` | não | FK → tb_cds_tipo_origem |
| 14 | `nu_cnes` | `character varying(7)` | não |  |
| 15 | `nu_ine` | `character varying(10)` | não |  |
