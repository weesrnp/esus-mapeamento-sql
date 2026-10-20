# tl_cds_ficha_consumo_alimentar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_ficha_consumo_alim` | `bigint` | sim | PK |
| 4 | `co_cds_prof` | `bigint` | não |  |
| 5 | `co_localidade_origem` | `bigint` | não |  |
| 6 | `dt_ficha` | `timestamp with time zone` | não |  |
| 7 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 8 | `no_identificacao_cidadao` | `character varying(255)` | não |  |
| 9 | `dt_nascimento_cidadao` | `timestamp with time zone` | não |  |
| 10 | `co_sexo` | `bigint` | não |  |
| 11 | `co_local_atend` | `bigint` | não |  |
| 12 | `co_qst_questionario_respondido` | `bigint` | não |  |
| 13 | `st_ficha` | `integer` | não |  |
| 14 | `co_unico_ficha` | `character varying(96)` | não |  |
| 15 | `tp_cds_origem` | `bigint` | não |  |
| 16 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 17 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 18 | `st_nao_possui_cpf` | `integer` | não |  |
| 19 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
