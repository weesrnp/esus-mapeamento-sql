# tb_fat_solicitacao_oci

Tipo: tabela  
Grupo: fatos  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_oci` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | sim | FK → tb_dim_tipo_ficha |
| 3 | `nu_uuid_ficha` | `character varying(92)` | sim |  |
| 4 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 5 | `co_dim_municipio` | `bigint` | sim | FK → tb_dim_municipio |
| 6 | `co_dim_unidade_saude_1` | `bigint` | sim | FK → tb_dim_unidade_saude |
| 7 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 8 | `co_dim_cbo_1` | `bigint` | sim | FK → tb_dim_cbo |
| 9 | `co_dim_profissional_1` | `bigint` | sim | FK → tb_dim_profissional |
| 10 | `co_dim_unidade_saude_2` | `bigint` | sim | FK → tb_dim_unidade_saude |
| 11 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_cbo_2` | `bigint` | sim | FK → tb_dim_cbo |
| 13 | `co_dim_profissional_2` | `bigint` | sim | FK → tb_dim_profissional |
| 14 | `co_dim_tempo` | `bigint` | sim | FK → tb_dim_tempo |
| 15 | `co_dim_turno` | `bigint` | sim | FK → tb_dim_turno |
| 16 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 17 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 18 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 19 | `co_dim_procedimento` | `bigint` | sim | FK → tb_dim_procedimento |
