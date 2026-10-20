# tl_integracao_horus

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_unidade_saude` | `bigint` | sim | PK |
| 4 | `dt_habilitar_integracao` | `timestamp with time zone` | não |  |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `tp_erro_teste_horus` | `character varying(50)` | não |  |
| 7 | `co_unidade_saude_padrao` | `bigint` | não |  |
