# ta_grupo_exame

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tagrupoexame` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_grupo_exame` | `bigint` | não |  |
| 5 | `no_grupo_exame` | `character varying(255)` | não |  |
| 6 | `nu_idade_minima` | `integer` | não |  |
| 7 | `nu_idade_maxima` | `integer` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
| 9 | `no_sexo` | `character varying(24)` | não |  |
