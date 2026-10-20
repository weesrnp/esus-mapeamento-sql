# tl_encaminhamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_encaminhamento` | `bigint` | sim | PK |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `co_especialidade_sisreg` | `bigint` | não |  |
| 7 | `ds_complemento` | `character varying(200)` | não |  |
| 8 | `co_cid10` | `bigint` | não |  |
| 9 | `co_ciap` | `bigint` | não |  |
| 10 | `co_classificacao_risco_encam` | `bigint` | não |  |
| 13 | `ds_motivo_encaminhamento` | `text` | não |  |
| 14 | `ds_observacao` | `text` | não |  |
