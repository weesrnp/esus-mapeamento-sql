# tb_cds_cad_individual

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 57

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_pais` | `bigint` | não | FK → tb_pais |
| 2 | `co_municipio` | `bigint` | não | FK → tb_localidade |
| 3 | `nu_pis_pasep` | `character varying(255)` | não |  |
| 4 | `nu_cartao_sus_responsavel` | `character varying(255)` | não |  |
| 5 | `dt_nascimento_responsavel` | `timestamp without time zone` | não |  |
| 6 | `ds_rg_recusa_cad` | `character varying(255)` | não |  |
| 7 | `co_unidade_saude` | `bigint` | não | FK → tb_unidade_saude |
| 8 | `dt_cad_individual` | `timestamp without time zone` | não |  |
| 9 | `st_ficha` | `integer` | não |  |
| 10 | `tp_cds_origem` | `bigint` | não |  |
| 11 | `co_cbo` | `bigint` | não | FK → tb_cbo |
| 12 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 13 | `st_recusa_cad` | `integer` | não |  |
| 14 | `st_responsavel_familiar` | `integer` | não |  |
| 15 | `co_seq_cds_cad_individual` | `bigint` | sim | PK |
| 16 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 17 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 18 | `no_cidadao` | `character varying(255)` | não |  |
| 19 | `no_social_cidadao` | `character varying(255)` | não |  |
| 20 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 21 | `co_raca_cor` | `bigint` | não | FK → tb_raca_cor |
| 22 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 23 | `no_mae_cidadao` | `character varying(255)` | não |  |
| 24 | `st_desconhece_nome_mae` | `integer` | não |  |
| 25 | `co_nacionalidade` | `bigint` | não | FK → tb_nacionalidade |
| 26 | `nu_celular_cidadao` | `character varying(255)` | não |  |
| 27 | `st_atualizacao` | `integer` | não |  |
| 28 | `ds_email_cidadao` | `character varying(255)` | não |  |
| 29 | `co_cds_prof_cadastrante` | `bigint` | sim | FK → tb_cds_prof |
| 30 | `co_unico_ficha_origem` | `character varying(96)` | não |  |
| 31 | `st_versao_atual` | `integer` | não |  |
| 32 | `co_unico_grupo` | `character varying(44)` | não |  |
| 33 | `no_cidadao_filtro` | `character varying(600)` | não |  |
| 34 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 35 | `co_etnia` | `bigint` | não | FK → tb_etnia |
| 36 | `no_pai_cidadao` | `character varying(255)` | não |  |
| 37 | `st_desconhece_nome_pai` | `integer` | não |  |
| 38 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 39 | `ds_portaria_naturalizacao` | `character varying(60)` | não |  |
| 40 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 41 | `dt_obito` | `timestamp with time zone` | não |  |
| 42 | `nu_declaracao_obito` | `character varying(9)` | não |  |
| 43 | `nu_micro_area` | `character varying(3)` | não |  |
| 44 | `st_fora_area` | `integer` | não |  |
| 45 | `st_ficha_inativa` | `integer` | não |  |
| 46 | `st_gerado_automaticamente` | `integer` | não |  |
| 47 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 48 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 49 | `st_erro_inativacao` | `integer` | não |  |
| 50 | `nu_dnv_cidadao` | `character varying(15)` | não |  |
| 51 | `st_nao_possui_cpf` | `integer` | não |  |
| 52 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
| 53 | `co_tipo_sanguineo` | `bigint` | não | FK → tb_tipo_sanguineo |
| 54 | `co_estado_civil` | `bigint` | não | FK → tb_estado_civil |
| 55 | `co_tipo_atend_socioeducativo` | `integer` | não | FK → tb_tipo_atend_socioeducativo |
| 56 | `co_tempo_atend_socioeducativo` | `integer` | não | FK → tb_tempo_atend_socioeducativo |
| 57 | `st_atend_socioeducativo` | `integer` | não |  |

Referenciada por: `tb_cds_cidadao_resposta`
