# tb_cds_ficha_consumo_alimentar

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_consumo_alim` | `bigint` | sim | PK |
| 2 | `co_cds_prof` | `bigint` | não | FK → tb_cds_prof |
| 3 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 4 | `dt_ficha` | `timestamp with time zone` | não |  |
| 5 | `nu_cns_cidadao` | `character varying(255)` | não |  |
| 6 | `no_identificacao_cidadao` | `character varying(255)` | não |  |
| 7 | `dt_nascimento_cidadao` | `timestamp with time zone` | não |  |
| 8 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 9 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 10 | `co_qst_questionario_respondido` | `bigint` | não | FK → tb_qst_questionario_respondido |
| 11 | `st_ficha` | `integer` | não |  |
| 12 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 13 | `tp_cds_origem` | `bigint` | não |  |
| 14 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 15 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 16 | `st_nao_possui_cpf` | `integer` | não |  |
| 17 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
