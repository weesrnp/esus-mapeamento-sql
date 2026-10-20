# ta_sistema_externo

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasistemaexterno` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_sistema_externo` | `bigint` | não |  |
| 5 | `no_sistema` | `character varying(100)` | não |  |
| 6 | `ds_url` | `character varying(2048)` | não |  |
| 7 | `ds_chave_assinatura` | `character varying(128)` | não |  |
| 8 | `no_responsavel` | `character varying(100)` | não |  |
| 9 | `ds_email` | `character varying(255)` | não |  |
| 10 | `tp_pessoa` | `character varying(8)` | não |  |
| 11 | `ds_cpf_cnpj` | `character varying(14)` | não |  |
| 12 | `dt_criacao` | `timestamp without time zone` | não |  |
| 13 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 14 | `st_ativo` | `integer` | não |  |
| 15 | `tp_sistema_externo` | `character varying(12)` | não |  |
