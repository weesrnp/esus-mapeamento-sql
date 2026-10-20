# ta_alergia

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taalergia` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_alergia` | `bigint` | não |  |
| 5 | `co_categoria_agente_causador` | `bigint` | não |  |
| 6 | `no_substancia_especifica` | `character varying(300)` | não |  |
| 7 | `co_ultima_alergia_evolucao` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `co_unico_alergia` | `bigint` | não |  |
| 10 | `co_substancia_especifica` | `bigint` | não |  |
