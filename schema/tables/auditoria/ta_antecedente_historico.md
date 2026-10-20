# ta_antecedente_historico

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taantecedentehistorico` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_antecedente_historico` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
