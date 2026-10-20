# tb_familia

Tipo: tabela  
Grupo: outras  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_familia` | `bigint` | sim | PK |
| 2 | `nu_ine` | `character varying(255)` | não |  |
| 3 | `nu_cnes` | `character varying(20)` | sim |  |
| 4 | `nu_cpf_cns_responsavel` | `character varying(255)` | sim |  |
| 5 | `nu_prontuario_familiar` | `character varying(255)` | não |  |
| 6 | `dt_nascimento_responsavel` | `date` | não |  |
| 7 | `co_renda_familiar` | `bigint` | não |  |
| 8 | `qt_membro` | `integer` | não |  |
| 9 | `co_cds_domicilio` | `bigint` | sim | FK → tb_cds_domicilio |
| 10 | `dt_reside_desde` | `date` | não |  |
| 11 | `st_responsavel_cadastrado` | `integer` | sim |  |
| 12 | `st_responsavel_declarado` | `integer` | sim |  |
| 13 | `st_responsavel_vivo` | `integer` | sim |  |
| 14 | `st_responsavel_unico` | `integer` | sim |  |
| 15 | `st_responsavel_ainda_reside` | `integer` | sim |  |
| 16 | `st_familia_ainda_reside` | `integer` | sim |  |
| 17 | `st_informacao_suficiente` | `integer` | sim |  |
| 18 | `st_domicilio_ativo` | `integer` | sim |  |
| 19 | `dt_atualizacao_fcd` | `timestamp with time zone` | não |  |
