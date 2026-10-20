# ta_guia_encaminhamento

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taguiaencaminhamento` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_encaminhamento` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_cbo` | `bigint` | não |  |
| 8 | `co_ciap` | `bigint` | não |  |
| 9 | `co_cid10` | `bigint` | não |  |
| 10 | `co_classificacao_prioridade_cc` | `bigint` | não |  |
| 11 | `ds_discussao` | `text` | não |  |
| 12 | `co_especialidade_esus_reg` | `bigint` | não |  |
