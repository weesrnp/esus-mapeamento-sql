# tl_unidade_saude

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `nu_licenca_funcionamento` | `character varying(20)` | não |  |
| 4 | `tp_unidade_saude` | `bigint` | não |  |
| 5 | `co_ator_papel` | `bigint` | sim | PK |
| 6 | `nu_cnes` | `character varying(20)` | não |  |
| 7 | `st_ativo` | `integer` | não |  |
| 8 | `nu_cnpj` | `character varying(14)` | não |  |
| 9 | `no_unidade_saude` | `character varying(255)` | não |  |
| 10 | `no_unidade_saude_filtro` | `character varying(255)` | não |  |
| 11 | `nu_telefone_comercial` | `character varying(255)` | não |  |
| 12 | `nu_telefone_comercial2` | `character varying(255)` | não |  |
| 13 | `nu_telefone_fax` | `character varying(255)` | não |  |
| 14 | `ds_email` | `character varying(255)` | não |  |
| 15 | `ds_cep` | `character varying(8)` | não |  |
| 16 | `ds_complemento` | `character varying(50)` | não |  |
| 17 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 18 | `ds_logradouro` | `character varying(150)` | não |  |
| 19 | `co_uf` | `bigint` | não |  |
| 20 | `co_localidade` | `bigint` | não |  |
| 21 | `nu_numero` | `character varying(20)` | não |  |
| 22 | `st_sem_numero` | `integer` | não |  |
| 23 | `no_bairro` | `character varying(255)` | não |  |
| 24 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 25 | `tp_logradouro` | `bigint` | não |  |
