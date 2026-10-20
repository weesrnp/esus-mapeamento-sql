# ta_vinculacao_equipes

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tavinculacaoequipes` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_vinculacao_equipes` | `bigint` | não |  |
| 5 | `co_equipe_principal` | `bigint` | não |  |
| 6 | `co_equipe_vinculada` | `bigint` | não |  |
