# tb_cds_aval_elegibilidade

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 55

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_aval_elegibilidade` | `bigint` | sim | PK |
| 2 | `co_cds_prof_cadastrante` | `bigint` | não | FK → tb_cds_prof |
| 3 | `co_ad_modalidade` | `bigint` | não | FK → tb_ad_modalidade |
| 4 | `co_ad_origem` | `bigint` | não | FK → tb_ad_origem |
| 5 | `tp_ad_elegivel` | `bigint` | não | FK → tb_ad_tipo_elegivel |
| 6 | `co_cid10_principal` | `bigint` | não | FK → tb_cid10 |
| 7 | `co_cid10_segundo` | `bigint` | não | FK → tb_cid10 |
| 8 | `co_cid10_terceiro` | `bigint` | não | FK → tb_cid10 |
| 9 | `co_localidade_cidadao` | `bigint` | não | FK → tb_localidade |
| 10 | `co_localidade_cidadao_nasc` | `bigint` | não | FK → tb_localidade |
| 11 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 12 | `co_nacionalidade` | `bigint` | não | FK → tb_nacionalidade |
| 13 | `co_raca_cor` | `bigint` | não | FK → tb_raca_cor |
| 14 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 15 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 16 | `co_uf` | `bigint` | não | FK → tb_uf |
| 17 | `co_unico_ficha` | `character varying(96)` | não |  |
| 18 | `ds_complemento` | `character varying(256)` | não |  |
| 19 | `ds_email_cidadao` | `character varying(255)` | não |  |
| 20 | `dt_aval_elegibilidade` | `timestamp with time zone` | não |  |
| 21 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 22 | `no_bairro` | `character varying(256)` | não |  |
| 23 | `no_cidadao` | `character varying(255)` | não |  |
| 24 | `no_logradouro` | `character varying(256)` | não |  |
| 25 | `no_mae_cidadao` | `character varying(255)` | não |  |
| 26 | `no_social_cidadao` | `character varying(255)` | não |  |
| 27 | `nu_cep` | `character varying(8)` | não |  |
| 28 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 29 | `nu_domicilio` | `character varying(255)` | não |  |
| 30 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 31 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 32 | `nu_nis_pis_pasep` | `character varying(255)` | não |  |
| 33 | `nu_prontuario` | `character varying(36)` | não |  |
| 34 | `st_desconhece_nome_mae` | `integer` | não |  |
| 35 | `st_ficha` | `integer` | não |  |
| 36 | `st_sem_numero` | `integer` | não |  |
| 37 | `tp_cds_origem` | `bigint` | não |  |
| 38 | `tp_cds_cuidador` | `bigint` | não | FK → tb_cds_tipo_cuidador |
| 39 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 40 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 41 | `co_pais` | `bigint` | não | FK → tb_pais |
| 42 | `co_etnia` | `bigint` | não | FK → tb_etnia |
| 43 | `no_pai_cidadao` | `character varying(255)` | não |  |
| 44 | `st_desconhece_nome_pai` | `integer` | não |  |
| 45 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 46 | `ds_portaria_naturalizacao` | `character varying(60)` | não |  |
| 47 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 48 | `nu_cns_cuidador` | `character varying(15)` | não |  |
| 49 | `co_cds_prof_at_compartilhado` | `bigint` | não | FK → tb_cds_prof |
| 50 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 51 | `co_ad_procedencia` | `bigint` | não | FK → tb_ad_origem |
| 52 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 53 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 54 | `st_nao_possui_cpf` | `integer` | não |  |
| 55 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_cds_aval_eleg_ad_tipo_inelg`, `rl_cds_aval_eleg_cds_situc_prs`
