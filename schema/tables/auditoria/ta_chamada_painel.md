# ta_chamada_painel

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tachamadapainel` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_chamada_painel` | `bigint` | não |  |
| 5 | `co_atend` | `bigint` | não |  |
| 6 | `co_ator_papel_chamada` | `bigint` | não |  |
| 7 | `tp_atendimento` | `character varying(20)` | não |  |
| 8 | `dt_chamada` | `timestamp without time zone` | não |  |
| 9 | `co_sala_unidade_saude` | `bigint` | não |  |
