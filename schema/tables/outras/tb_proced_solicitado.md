# tb_proced_solicitado

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_proced_solicitado` | `bigint` | sim | PK |
| 2 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 3 | `co_proced` | `bigint` | sim | FK → tb_proced |
| 4 | `ds_orientacao` | `character varying(4000)` | não |  |
| 5 | `co_lotacao_solicitante` | `bigint` | sim | FK → tb_lotacao |
| 6 | `dt_solicitacao` | `timestamp without time zone` | sim |  |
| 7 | `co_lotacao_executante` | `bigint` | não | FK → tb_lotacao |
| 8 | `dt_execucao` | `timestamp without time zone` | não |  |
| 9 | `ds_observacao_execucao` | `character varying(4000)` | não |  |
