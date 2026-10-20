# tl_regulacao_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | não |  |
| 2 | `co_tipo_revisao` | `smallint` | não |  |
| 3 | `co_seq_regulacao_evolucao` | `bigint` | não |  |
| 4 | `co_regulacao` | `bigint` | não |  |
| 5 | `dt_evolucao_regulacao` | `timestamp without time zone` | não |  |
| 6 | `no_status` | `character varying(255)` | não |  |
| 7 | `no_prioridade` | `character varying(255)` | não |  |
| 8 | `ds_observacao` | `character varying(2000)` | não |  |
| 9 | `co_credencial_integracao` | `bigint` | não |  |
