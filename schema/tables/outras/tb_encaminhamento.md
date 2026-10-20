# tb_encaminhamento

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_encaminhamento` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `co_especialidade_sisreg` | `bigint` | não | FK → tb_especialidade_sisreg |
| 5 | `ds_complemento` | `character varying(200)` | não |  |
| 6 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 7 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 8 | `co_classificacao_risco_encam` | `bigint` | não | FK → tb_classificacao_risco_encam |
| 11 | `ds_motivo_encaminhamento` | `text` | não |  |
| 12 | `ds_observacao` | `text` | não |  |
