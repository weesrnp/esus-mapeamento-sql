# ta_sinan_notificacao_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasinannotificacaoevolc` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_sinan_notificacao_evol` | `bigint` | não |  |
| 5 | `co_sinan_notificacao` | `bigint` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_prontuario` | `bigint` | não |  |
