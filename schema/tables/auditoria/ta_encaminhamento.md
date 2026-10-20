# ta_encaminhamento

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taencaminhamento` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_encaminhamento` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_especialidade_sisreg` | `bigint` | não |  |
| 8 | `ds_complemento` | `character varying(200)` | não |  |
| 9 | `co_cid10` | `bigint` | não |  |
| 10 | `co_ciap` | `bigint` | não |  |
| 11 | `co_classificacao_risco_encam` | `bigint` | não |  |
| 12 | `ds_motivo_encaminhamento` | `text` | não |  |
| 13 | `ds_observacao` | `text` | não |  |
