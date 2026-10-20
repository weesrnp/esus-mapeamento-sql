# tb_fat_app_atendimento

Tipo: tabela  
Grupo: fatos  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_app_atendimento` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | sim | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | sim | FK → tb_dim_municipio |
| 4 | `co_dim_unidade_saude` | `bigint` | sim | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_cbo` | `bigint` | sim | FK → tb_dim_cbo |
| 7 | `co_dim_profissional` | `bigint` | sim | FK → tb_dim_profissional |
| 8 | `co_dim_tempo` | `bigint` | sim | FK → tb_dim_tempo |
| 9 | `nu_uuid_ficha` | `character varying(92)` | sim |  |
| 10 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 11 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 12 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 13 | `ds_subjetivo` | `text` | não |  |
| 14 | `ds_objetivo` | `text` | não |  |
| 15 | `ds_avaliacao` | `text` | não |  |
| 16 | `ds_plano` | `text` | não |  |
