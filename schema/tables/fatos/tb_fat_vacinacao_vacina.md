# tb_fat_vacinacao_vacina

Tipo: tabela  
Grupo: fatos  
Colunas: 31

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_vacinacao_vacina` | `bigint` | sim | PK |
| 2 | `co_fat_vacinacao` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 7 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 8 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 9 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 10 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 11 | `nu_atendimento` | `integer` | não |  |
| 12 | `co_dim_imunobiologico` | `bigint` | não | FK → tb_dim_imunobiologico |
| 13 | `co_dim_estrategia_vacinacao` | `bigint` | não | FK → tb_dim_estrategia_vacinacao |
| 14 | `co_dim_dose_imunobiologico` | `bigint` | não | FK → tb_dim_dose_imunobiologico |
| 15 | `no_lote` | `character varying(255)` | não |  |
| 17 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 20 | `co_dim_grupo_atendimento` | `bigint` | não | FK → tb_dim_grupo_atendimento |
| 21 | `st_registro_anterior` | `integer` | não |  |
| 22 | `co_dim_tempo_vacina_aplicada` | `bigint` | não | FK → tb_dim_tempo |
| 23 | `st_aplicado_exterior` | `integer` | não |  |
| 24 | `co_dim_cbo_prescritor` | `bigint` | sim | FK → tb_dim_cbo |
| 25 | `co_dim_cid_motivo_indicacao` | `bigint` | sim | FK → tb_dim_cid |
| 26 | `st_pesquisa_clinica` | `integer` | sim |  |
| 27 | `ds_anvisa_protocolo_estudo` | `character varying(255)` | não |  |
| 28 | `ds_anvisa_protocolo_versao` | `character varying(255)` | não |  |
| 29 | `ds_anvisa_numero_registro` | `character varying(255)` | não |  |
| 30 | `co_dim_via_adm_vacina` | `bigint` | não | FK → tb_dim_via_adm_vacina |
| 31 | `co_dim_local_apl_vacina` | `bigint` | não | FK → tb_dim_local_apl_vacina |
| 32 | `co_dim_imunobiologico_fabrc` | `bigint` | não | FK → tb_dim_imunobiologico_fabrcnt |
