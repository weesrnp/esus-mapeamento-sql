# tl_familia

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_familia` | `bigint` | sim | PK |
| 4 | `nu_ine` | `character varying(255)` | não |  |
| 5 | `nu_cnes` | `character varying(20)` | não |  |
| 6 | `nu_cpf_cns_responsavel` | `character varying(255)` | não |  |
| 7 | `nu_prontuario_familiar` | `character varying(255)` | não |  |
| 8 | `dt_nascimento_responsavel` | `date` | não |  |
| 9 | `co_renda_familiar` | `bigint` | não |  |
| 10 | `qt_membro` | `integer` | não |  |
| 11 | `co_cds_domicilio` | `bigint` | não |  |
| 12 | `dt_reside_desde` | `date` | não |  |
| 13 | `st_responsavel_cadastrado` | `integer` | não |  |
| 14 | `st_responsavel_declarado` | `integer` | não |  |
| 15 | `st_responsavel_vivo` | `integer` | não |  |
| 16 | `st_responsavel_unico` | `integer` | não |  |
| 17 | `st_responsavel_ainda_reside` | `integer` | não |  |
| 18 | `st_familia_ainda_reside` | `integer` | não |  |
| 19 | `st_informacao_suficiente` | `integer` | não |  |
| 20 | `st_domicilio_ativo` | `integer` | não |  |
| 21 | `dt_atualizacao_fcd` | `timestamp with time zone` | não |  |
