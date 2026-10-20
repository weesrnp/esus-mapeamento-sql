# tl_equipe

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_equipe` | `bigint` | sim | PK |
| 4 | `nu_ine` | `character varying(255)` | não |  |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `co_unidade_saude` | `bigint` | não |  |
| 7 | `qt_referencia` | `bigint` | não |  |
| 8 | `tp_equipe` | `bigint` | não |  |
| 9 | `ds_area` | `character varying(255)` | não |  |
| 10 | `no_equipe` | `character varying(255)` | não |  |
| 11 | `no_equipe_filtro` | `character varying(255)` | não |  |
