# ta_credencial_integracao

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacredencialintegracao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_credencial_integracao` | `bigint` | não |  |
| 5 | `no_usuario` | `character varying(50)` | não |  |
| 6 | `ds_senha` | `character varying(200)` | não |  |
| 7 | `no_responsavel` | `character varying(100)` | não |  |
| 8 | `dt_criacao` | `timestamp without time zone` | não |  |
| 9 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 10 | `st_ativo` | `integer` | não |  |
| 11 | `no_credencial` | `character varying(100)` | não |  |
| 12 | `ds_email` | `character varying(200)` | não |  |
| 13 | `tp_pessoa` | `character varying(30)` | não |  |
| 14 | `ds_cpf_cnpj` | `character varying(14)` | não |  |
| 15 | `ds_url_webhook_regulacao` | `character varying(255)` | não |  |
