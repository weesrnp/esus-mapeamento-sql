# ta_unidade_saude

Tipo: tabela  
Grupo: auditoria  
Colunas: 28

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taunidadesaude` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `nu_licenca_funcionamento` | `character varying(20)` | não |  |
| 5 | `tp_unidade_saude` | `bigint` | não |  |
| 6 | `co_seq_unidade_saude` | `bigint` | não |  |
| 7 | `nu_cnes` | `character varying(20)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |
| 9 | `nu_cnpj` | `character varying(14)` | não |  |
| 10 | `no_unidade_saude` | `character varying(255)` | não |  |
| 11 | `no_unidade_saude_filtro` | `character varying(255)` | não |  |
| 12 | `nu_telefone_comercial` | `character varying(255)` | não |  |
| 13 | `nu_telefone_comercial2` | `character varying(255)` | não |  |
| 14 | `nu_telefone_fax` | `character varying(255)` | não |  |
| 15 | `ds_email` | `character varying(255)` | não |  |
| 16 | `ds_cep` | `character varying(8)` | não |  |
| 17 | `ds_complemento` | `character varying(50)` | não |  |
| 18 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 19 | `ds_logradouro` | `character varying(150)` | não |  |
| 20 | `co_uf` | `bigint` | não |  |
| 21 | `co_localidade_endereco` | `bigint` | não |  |
| 22 | `nu_numero` | `character varying(20)` | não |  |
| 23 | `st_sem_numero` | `integer` | não |  |
| 24 | `no_bairro` | `character varying(255)` | não |  |
| 25 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 26 | `tp_logradouro` | `bigint` | não |  |
| 27 | `co_subtp_unidade_saude` | `bigint` | não |  |
| 28 | `st_cnes_reset` | `integer` | não |  |
