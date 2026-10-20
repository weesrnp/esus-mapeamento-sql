# tl_alergia

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_alergia` | `bigint` | sim | PK |
| 4 | `co_categoria_agente_causador` | `bigint` | não |  |
| 5 | `no_substancia_especifica` | `character varying(300)` | não |  |
| 6 | `no_substancia_especifica_filtr` | `character varying(300)` | não |  |
| 7 | `co_ultima_alergia_evolucao` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `co_unico_alergia` | `bigint` | não |  |
