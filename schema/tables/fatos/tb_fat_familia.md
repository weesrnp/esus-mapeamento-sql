# tb_fat_familia

Tipo: tabela  
Grupo: fatos  
Colunas: 20

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_familia` | `bigint` | sim | PK |
| 2 | `co_fat_cad_domiciliar` | `bigint` | não |  |
| 3 | `co_fat_cad_dom_familia` | `bigint` | não |  |
| 4 | `co_fat_cidadao` | `bigint` | não |  |
| 5 | `nu_uuid_ficha_cd` | `character varying(92)` | não |  |
| 6 | `nu_uuid_ficha_cd_origem` | `character varying(92)` | não |  |
| 7 | `nu_cns_responsavel` | `character(15)` | não |  |
| 8 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 9 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 10 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 11 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 12 | `co_dim_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `st_registro_valido` | `integer` | não |  |
| 14 | `st_responsavel_declarado_ci` | `integer` | não |  |
| 15 | `st_responsavel_vivo` | `integer` | não |  |
| 16 | `st_responsavel_unico` | `integer` | não |  |
| 17 | `st_responsavel_ainda_reside` | `integer` | não |  |
| 18 | `st_familia_ainda_reside` | `integer` | não |  |
| 19 | `st_com_domicilio` | `integer` | não |  |
| 20 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
