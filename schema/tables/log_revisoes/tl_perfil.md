# tl_perfil

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_perfil` | `bigint` | sim | PK |
| 4 | `no_perfil` | `character varying(100)` | não |  |
| 5 | `no_perfil_filtro` | `character varying(50)` | não |  |
| 6 | `qt_referencia` | `bigint` | não |  |
| 7 | `co_localidade` | `bigint` | não |  |
| 8 | `no_perfil_padrao` | `character varying(100)` | não |  |
| 9 | `tp_perfil` | `bigint` | não |  |
| 10 | `st_ativo` | `integer` | não |  |
