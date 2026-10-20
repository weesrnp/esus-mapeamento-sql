# ta_compartilhamento_prontuario

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacompartilhamentoprntr` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_compartilha_prontuario` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `co_usuario` | `bigint` | não |  |
| 7 | `st_ativo` | `integer` | não |  |
| 8 | `dt_ultima_alteracao` | `timestamp with time zone` | não |  |
