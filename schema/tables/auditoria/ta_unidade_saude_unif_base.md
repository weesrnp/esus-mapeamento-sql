# ta_unidade_saude_unif_base

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taunidadesaudeunifbase` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_unidade_saude_unif_base` | `bigint` | não |  |
| 5 | `nu_cnes` | `character varying(20)` | não |  |
| 6 | `st_criado_unificacao` | `integer` | não |  |
| 7 | `co_unificacao_base` | `bigint` | não |  |
