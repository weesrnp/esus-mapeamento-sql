# tl_cds_cad_individual

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 59

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cbo` | `bigint` | não |  |
| 2 | `co_municipio` | `bigint` | não |  |
| 3 | `co_pais` | `bigint` | não |  |
| 4 | `co_cds_prof_cadastrante` | `bigint` | não |  |
| 5 | `co_seq_cds_cad_individual` | `bigint` | sim | PK |
| 6 | `co_unico_ficha` | `character varying(96)` | não |  |
| 7 | `co_unidade_saude` | `bigint` | não |  |
| 8 | `ds_rg_recusa_cad` | `character varying(255)` | não |  |
| 9 | `dt_cad_individual` | `timestamp without time zone` | não |  |
| 10 | `dt_nascimento_responsavel` | `timestamp without time zone` | não |  |
| 11 | `nu_cartao_sus_responsavel` | `character varying(255)` | não |  |
| 12 | `nu_pis_pasep` | `character varying(255)` | não |  |
| 13 | `st_ficha` | `integer` | não |  |
| 14 | `st_recusa_cad` | `integer` | não |  |
| 15 | `st_responsavel_familiar` | `integer` | não |  |
| 16 | `tp_cds_origem` | `bigint` | não |  |
| 17 | `co_revisao` | `bigint` | sim | PK |
| 18 | `co_tipo_revisao` | `integer` | não |  |
| 19 | `co_localidade_origem` | `bigint` | não |  |
| 20 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 21 | `no_cidadao` | `character varying(255)` | não |  |
| 22 | `no_social_cidadao` | `character varying(255)` | não |  |
| 23 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 24 | `co_raca_cor` | `bigint` | não |  |
| 25 | `co_sexo` | `bigint` | não |  |
| 26 | `no_mae_cidadao` | `character varying(255)` | não |  |
| 27 | `st_desconhece_nome_mae` | `integer` | não |  |
| 28 | `co_nacionalidade` | `bigint` | não |  |
| 29 | `nu_celular_cidadao` | `character varying(255)` | não |  |
| 30 | `ds_email_cidadao` | `character varying(255)` | não |  |
| 31 | `st_atualizacao` | `integer` | não |  |
| 32 | `co_unico_ficha_origem` | `character varying(96)` | não |  |
| 33 | `st_versao_atual` | `integer` | não |  |
| 34 | `co_unico_grupo` | `character varying(44)` | não |  |
| 35 | `no_cidadao_filtro` | `character varying(600)` | não |  |
| 36 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 37 | `co_etnia` | `bigint` | não |  |
| 38 | `no_pai_cidadao` | `character varying(255)` | não |  |
| 39 | `st_desconhece_nome_pai` | `integer` | não |  |
| 40 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 41 | `ds_portaria_naturalizacao` | `character varying(60)` | não |  |
| 42 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 43 | `dt_obito` | `timestamp with time zone` | não |  |
| 44 | `nu_declaracao_obito` | `character varying(9)` | não |  |
| 45 | `nu_micro_area` | `character varying(3)` | não |  |
| 46 | `st_fora_area` | `integer` | não |  |
| 47 | `st_ficha_inativa` | `integer` | não |  |
| 48 | `st_gerado_automaticamente` | `integer` | não |  |
| 49 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 50 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 51 | `st_erro_inativacao` | `integer` | não |  |
| 52 | `nu_dnv_cidadao` | `character varying(15)` | não |  |
| 53 | `st_nao_possui_cpf` | `integer` | não |  |
| 54 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
| 55 | `co_tipo_sanguineo` | `bigint` | não |  |
| 56 | `co_estado_civil` | `bigint` | não |  |
| 57 | `co_tipo_atend_socioeducativo` | `integer` | não |  |
| 58 | `co_tempo_atend_socioeducativo` | `integer` | não |  |
| 59 | `st_atend_socioeducativo` | `integer` | não |  |
