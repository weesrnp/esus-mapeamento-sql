# ta_equipe

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taequipe` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_equipe` | `bigint` | não |  |
| 5 | `nu_ine` | `character varying(255)` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `co_unidade_saude` | `bigint` | não |  |
| 8 | `qt_referencia` | `bigint` | não |  |
| 9 | `tp_equipe` | `bigint` | não |  |
| 10 | `ds_area` | `character varying(255)` | não |  |
| 11 | `no_equipe` | `character varying(255)` | não |  |
| 12 | `no_equipe_filtro` | `character varying(255)` | não |  |
| 13 | `co_unico_equipe` | `character varying(255)` | não |  |
