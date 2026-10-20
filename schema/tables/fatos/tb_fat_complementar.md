# tb_fat_complementar

Tipo: tabela  
Grupo: fatos  
Colunas: 33

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_complementar` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 6 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 7 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 8 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 10 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 11 | `nu_cns` | `character(15)` | não |  |
| 12 | `nu_cns_responsavel` | `character(15)` | não |  |
| 13 | `dt_teste_olhinho` | `date` | não |  |
| 14 | `st_teste_olhinho` | `integer` | não |  |
| 15 | `dt_exame_fundo_olho` | `date` | não |  |
| 16 | `st_exame_fundo_olho` | `integer` | não |  |
| 17 | `dt_teste_orelhinha` | `date` | não |  |
| 18 | `st_teste_orelhinha` | `integer` | não |  |
| 19 | `dt_transfontanela` | `date` | não |  |
| 20 | `st_transfontanela` | `integer` | não |  |
| 21 | `dt_tomografia` | `date` | não |  |
| 22 | `st_tomografia` | `integer` | não |  |
| 23 | `dt_ressonancia` | `date` | não |  |
| 24 | `st_ressonancia` | `integer` | não |  |
| 25 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 26 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 27 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 28 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 29 | `co_fat_cidadao_pec_responsvl` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 30 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 31 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 32 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 33 | `st_nao_possui_cpf` | `integer` | não |  |
