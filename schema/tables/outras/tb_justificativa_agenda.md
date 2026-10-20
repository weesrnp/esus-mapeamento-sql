# tb_justificativa_agenda

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_justificativa_agendamnt` | `bigint` | sim | PK |
| 2 | `co_agendamento` | `bigint` | sim | FK → tb_agendado |
| 3 | `co_responsavel_cancelamento` | `bigint` | não | FK → tb_ator_papel |
| 4 | `ds_justificativa` | `character varying(2000)` | não |  |
| 5 | `dt_justificativa` | `timestamp with time zone` | sim |  |
| 6 | `co_origem_justificativa` | `bigint` | não | FK → tb_origem |
| 7 | `ds_opcao_justificativa` | `character varying(44)` | não |  |
| 8 | `co_usuario` | `bigint` | não | FK → tb_usuario |
