# tb_polo_base

Tipo: tabela  
Grupo: outras  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_polo_base` | `bigint` | sim | PK |
| 2 | `co_dsei` | `bigint` | sim | FK → tb_dsei |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 4 | `no_polo_base` | `character varying(100)` | sim |  |
| 5 | `no_polo_base_filtro` | `character varying(100)` | sim |  |
| 6 | `no_bairro` | `character varying(100)` | não |  |
| 7 | `no_logradouro` | `character varying(100)` | não |  |
| 8 | `nu_cep` | `character varying(100)` | não |  |
| 9 | `ds_complemento` | `character varying(100)` | não |  |
| 10 | `nu_ddd1` | `character varying(100)` | não |  |
| 11 | `nu_telefone1` | `character varying(100)` | não |  |
| 12 | `nu_ddd2` | `character varying(100)` | não |  |
| 13 | `nu_telefone2` | `character varying(100)` | não |  |
| 14 | `nu_ddd_fax` | `character varying(100)` | não |  |
| 15 | `nu_fax` | `character varying(100)` | não |  |
| 16 | `ds_email` | `character varying(100)` | não |  |
| 17 | `dt_inclusao` | `date` | sim |  |
| 18 | `dt_extincao` | `date` | não |  |
| 19 | `no_chefe_polo_base` | `character varying(100)` | não |  |
| 20 | `ds_email_chefe` | `character varying(100)` | não |  |
| 21 | `st_atendimento_saude` | `integer` | sim |  |
| 22 | `st_estrutura_fisica` | `integer` | sim |  |
| 23 | `st_comunicacao_siasi` | `integer` | sim |  |
| 24 | `st_energia_eletrica` | `integer` | sim |  |
| 25 | `st_registro_ativo` | `integer` | sim |  |

Referenciada por: `tb_aldeia`, `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`
