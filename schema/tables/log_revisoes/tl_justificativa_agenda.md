# tl_justificativa_agenda

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_justificativa_agendamnt` | `bigint` | sim | PK |
| 4 | `co_agendamento` | `bigint` | não |  |
| 5 | `co_lotacao_justificativa` | `bigint` | não |  |
| 6 | `ds_justificativa` | `character varying(2000)` | não |  |
| 7 | `dt_justificativa` | `timestamp with time zone` | não |  |
| 8 | `co_origem_justificativa` | `bigint` | não |  |
| 9 | `ds_opcao_justificativa` | `character varying(44)` | não |  |
