# ta_arquivo_atendprof

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taarquivoatendprof` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_arquivo_atendprof` | `bigint` | não |  |
| 5 | `co_arquivo` | `bigint` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_categoria` | `bigint` | não |  |
| 8 | `no_titulo` | `character varying(80)` | não |  |
| 9 | `ds_observacao` | `character varying(200)` | não |  |
