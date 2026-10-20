# ta_unidade_saude_tipo_servico

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taunidadesaudetiposervc` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `tp_servico` | `bigint` | não |  |
| 5 | `co_ator_papel` | `bigint` | não |  |
