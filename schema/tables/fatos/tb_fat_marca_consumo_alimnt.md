# tb_fat_marca_consumo_alimnt

Tipo: tabela  
Grupo: fatos  
Colunas: 65

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_marca_con_almnt` | `bigint` | sim | PK |
| 2 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 3 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 4 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 7 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 8 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 9 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 10 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 11 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 12 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 13 | `nu_cns` | `character(15)` | não |  |
| 14 | `dt_nascimento` | `date` | não |  |
| 15 | `nu_resp_menor_6_meses_1` | `integer` | não |  |
| 16 | `nu_resp_menor_6_meses_2` | `integer` | não |  |
| 17 | `nu_resp_menor_6_meses_3` | `integer` | não |  |
| 18 | `nu_resp_menor_6_meses_4` | `integer` | não |  |
| 19 | `nu_resp_menor_6_meses_5` | `integer` | não |  |
| 20 | `nu_resp_menor_6_meses_6` | `integer` | não |  |
| 21 | `nu_resp_menor_6_meses_7` | `integer` | não |  |
| 22 | `nu_resp_menor_6_meses_8` | `integer` | não |  |
| 23 | `nu_resp_menor_6_meses_9` | `integer` | não |  |
| 24 | `nu_resp_de_6_a_23_meses_1` | `integer` | não |  |
| 25 | `nu_resp_de_6_a_23_meses_2` | `integer` | não |  |
| 26 | `nu_resp_de_6_a_23_meses_3` | `integer` | não |  |
| 27 | `nu_resp_de_6_a_23_meses_4` | `integer` | não |  |
| 28 | `nu_resp_de_6_a_23_meses_5` | `integer` | não |  |
| 29 | `nu_resp_de_6_a_23_meses_6` | `integer` | não |  |
| 30 | `nu_resp_de_6_a_23_meses_7` | `integer` | não |  |
| 31 | `nu_resp_de_6_a_23_meses_8` | `integer` | não |  |
| 32 | `nu_resp_de_6_a_23_meses_9` | `integer` | não |  |
| 33 | `nu_resp_de_6_a_23_meses_10` | `integer` | não |  |
| 34 | `nu_resp_de_6_a_23_meses_11` | `integer` | não |  |
| 35 | `nu_resp_de_6_a_23_meses_12` | `integer` | não |  |
| 36 | `nu_resp_de_6_a_23_meses_13` | `integer` | não |  |
| 37 | `nu_resp_de_6_a_23_meses_14` | `integer` | não |  |
| 38 | `nu_resp_de_6_a_23_meses_15` | `integer` | não |  |
| 39 | `nu_resp_de_6_a_23_meses_16` | `integer` | não |  |
| 40 | `nu_resp_de_6_a_23_meses_17` | `integer` | não |  |
| 41 | `nu_resp_de_6_a_23_meses_18` | `integer` | não |  |
| 42 | `nu_resp_de_6_a_23_meses_19` | `integer` | não |  |
| 43 | `nu_resp_de_6_a_23_meses_20` | `integer` | não |  |
| 44 | `nu_resp_2_anos_ou_mais_1` | `integer` | não |  |
| 45 | `st_resp_2_anos_ou_mais_2_1` | `integer` | não |  |
| 46 | `st_resp_2_anos_ou_mais_2_2` | `integer` | não |  |
| 47 | `st_resp_2_anos_ou_mais_2_3` | `integer` | não |  |
| 48 | `st_resp_2_anos_ou_mais_2_4` | `integer` | não |  |
| 49 | `st_resp_2_anos_ou_mais_2_5` | `integer` | não |  |
| 50 | `st_resp_2_anos_ou_mais_2_6` | `integer` | não |  |
| 51 | `nu_resp_2_anos_ou_mais_3` | `integer` | não |  |
| 52 | `nu_resp_2_anos_ou_mais_4` | `integer` | não |  |
| 53 | `nu_resp_2_anos_ou_mais_5` | `integer` | não |  |
| 54 | `nu_resp_2_anos_ou_mais_6` | `integer` | não |  |
| 55 | `nu_resp_2_anos_ou_mais_7` | `integer` | não |  |
| 56 | `nu_resp_2_anos_ou_mais_8` | `integer` | não |  |
| 57 | `nu_resp_2_anos_ou_mais_9` | `integer` | não |  |
| 58 | `no_nome` | `character varying(225)` | não |  |
| 59 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 60 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 61 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 62 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 63 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 64 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 65 | `st_nao_possui_cpf` | `integer` | não |  |
