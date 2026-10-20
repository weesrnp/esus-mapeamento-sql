# ta_integracao_horus

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taintegracaohorus` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_unidade_saude` | `bigint` | não |  |
| 5 | `dt_habilitar_integracao` | `timestamp with time zone` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `tp_erro_teste_horus` | `character varying(50)` | não |  |
| 8 | `co_unidade_saude_padrao` | `bigint` | não |  |
