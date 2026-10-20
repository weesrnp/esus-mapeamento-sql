# tb_fat_cad_dom_familia

Tipo: tabela  
Grupo: fatos  
Colunas: 28

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cad_dom_familia` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `nu_uuid_ficha_origem` | `character varying(92)` | não |  |
| 4 | `st_recusa_cadastro` | `integer` | não |  |
| 5 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 6 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 7 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 8 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 9 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 10 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 11 | `co_dim_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 12 | `co_dim_tempo_validade_recusa` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 14 | `nu_cns_responsavel` | `character(15)` | não |  |
| 15 | `dt_nascimento` | `date` | não |  |
| 16 | `dt_inicio_residencia` | `date` | não |  |
| 17 | `st_mudou` | `integer` | não |  |
| 18 | `co_dim_tipo_renda_familiar` | `bigint` | não | FK → tb_dim_tipo_renda_familiar |
| 19 | `st_normaliza_ficha_cadastros` | `integer` | não |  |
| 20 | `co_fat_cad_domiciliar` | `bigint` | não |  |
| 21 | `nu_micro_area` | `character varying(3)` | não |  |
| 22 | `qt_membro_familiar` | `integer` | não |  |
| 23 | `nu_prontuario` | `character varying(65)` | não |  |
| 24 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 25 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 26 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 27 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 28 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
