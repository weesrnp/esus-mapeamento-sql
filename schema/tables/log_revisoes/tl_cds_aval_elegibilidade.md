# tl_cds_aval_elegibilidade

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 57

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_aval_elegibilidade` | `bigint` | sim | PK |
| 4 | `co_cds_prof_cadastrante` | `bigint` | não |  |
| 5 | `co_ad_modalidade` | `bigint` | não |  |
| 6 | `co_ad_origem` | `bigint` | não |  |
| 7 | `tp_ad_elegivel` | `bigint` | não |  |
| 8 | `co_cid10_principal` | `bigint` | não |  |
| 9 | `co_cid10_segundo` | `bigint` | não |  |
| 10 | `co_cid10_terceiro` | `bigint` | não |  |
| 11 | `co_localidade_cidadao` | `bigint` | não |  |
| 12 | `co_localidade_cidadao_nasc` | `bigint` | não |  |
| 13 | `co_localidade_origem` | `bigint` | não |  |
| 14 | `co_nacionalidade` | `bigint` | não |  |
| 15 | `co_raca_cor` | `bigint` | não |  |
| 16 | `co_sexo` | `bigint` | não |  |
| 17 | `tp_logradouro` | `bigint` | não |  |
| 18 | `co_uf` | `bigint` | não |  |
| 19 | `co_unico_ficha` | `character varying(96)` | não |  |
| 20 | `ds_complemento` | `character varying(256)` | não |  |
| 21 | `ds_email_cidadao` | `character varying(255)` | não |  |
| 22 | `dt_aval_elegibilidade` | `timestamp with time zone` | não |  |
| 23 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 24 | `no_bairro` | `character varying(256)` | não |  |
| 25 | `no_cidadao` | `character varying(255)` | não |  |
| 26 | `no_logradouro` | `character varying(256)` | não |  |
| 27 | `no_mae_cidadao` | `character varying(255)` | não |  |
| 28 | `no_social_cidadao` | `character varying(255)` | não |  |
| 29 | `nu_cep` | `character varying(8)` | não |  |
| 30 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 31 | `nu_domicilio` | `character varying(255)` | não |  |
| 32 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 33 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 34 | `nu_nis_pis_pasep` | `character varying(255)` | não |  |
| 35 | `nu_prontuario` | `character varying(36)` | não |  |
| 36 | `st_desconhece_nome_mae` | `integer` | não |  |
| 37 | `st_ficha` | `integer` | não |  |
| 38 | `st_sem_numero` | `integer` | não |  |
| 39 | `tp_cds_origem` | `bigint` | não |  |
| 40 | `tp_cds_cuidador` | `bigint` | não |  |
| 41 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 42 | `co_cds_turno` | `bigint` | não |  |
| 43 | `co_pais` | `bigint` | não |  |
| 44 | `co_etnia` | `bigint` | não |  |
| 45 | `no_pai_cidadao` | `character varying(255)` | não |  |
| 46 | `st_desconhece_nome_pai` | `integer` | não |  |
| 47 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 48 | `ds_portaria_naturalizacao` | `character varying(60)` | não |  |
| 49 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 50 | `nu_cns_cuidador` | `character varying(15)` | não |  |
| 51 | `co_cds_prof_at_compartilhado` | `bigint` | não |  |
| 52 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 53 | `co_ad_procedencia` | `bigint` | não |  |
| 54 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 55 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 56 | `st_nao_possui_cpf` | `integer` | não |  |
| 57 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
