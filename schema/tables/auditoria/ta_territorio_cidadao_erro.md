# ta_territorio_cidadao_erro

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taterritoriocidadaoerro` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_territorio_cidadao_erro` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `ds_origem` | `character varying(64)` | não |  |
| 7 | `ds_mensagem_erro` | `text` | não |  |
