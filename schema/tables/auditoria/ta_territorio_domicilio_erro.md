# ta_territorio_domicilio_erro

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taterritoriodomiciliorr` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_territorio_dom_erro` | `bigint` | não |  |
| 5 | `co_domicilio` | `bigint` | não |  |
| 6 | `ds_origem` | `character varying(64)` | não |  |
| 7 | `ds_mensagem_erro` | `text` | não |  |
