# tl_proced_solicitado

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_proced_solicitado` | `bigint` | sim | PK |
| 4 | `co_prontuario` | `bigint` | não |  |
| 5 | `co_proced` | `bigint` | não |  |
| 6 | `ds_orientacao` | `character varying(4000)` | não |  |
| 7 | `co_lotacao_solicitante` | `bigint` | não |  |
| 8 | `dt_solicitacao` | `timestamp without time zone` | não |  |
| 9 | `co_lotacao_executante` | `bigint` | não |  |
| 10 | `dt_execucao` | `timestamp without time zone` | não |  |
| 11 | `ds_observacao_execucao` | `character varying(4000)` | não |  |
