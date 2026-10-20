# tb_dsei

Tipo: tabela  
Grupo: outras  
Colunas: 20

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_dsei` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 3 | `no_dsei` | `character varying(255)` | sim |  |
| 4 | `no_dsei_filtro` | `character varying(255)` | sim |  |
| 5 | `ds_email` | `character varying(60)` | não |  |
| 6 | `ds_email_chefe` | `character varying(60)` | não |  |
| 7 | `no_chefe_dsei` | `character varying(100)` | sim |  |
| 8 | `no_logradouro` | `character varying(100)` | sim |  |
| 9 | `no_bairro` | `character varying(100)` | não |  |
| 10 | `nu_cep` | `character varying(8)` | não |  |
| 11 | `ds_complemento` | `character varying(100)` | não |  |
| 12 | `nu_ddd1` | `character varying(4)` | não |  |
| 13 | `nu_telefone1` | `character varying(10)` | não |  |
| 14 | `nu_ddd2` | `character varying(4)` | não |  |
| 15 | `nu_telefone2` | `character varying(10)` | não |  |
| 16 | `nu_ddd_fax` | `character varying(4)` | não |  |
| 17 | `nu_fax` | `character varying(10)` | não |  |
| 18 | `dt_inclusao` | `date` | sim |  |
| 19 | `dt_extincao` | `date` | não |  |
| 20 | `st_registro_ativo` | `integer` | sim |  |

Referenciada por: `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`, `tb_polo_base`
