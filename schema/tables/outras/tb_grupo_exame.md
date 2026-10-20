# tb_grupo_exame

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_exame` | `bigint` | sim | PK |
| 2 | `no_grupo_exame` | `character varying(255)` | sim |  |
| 4 | `nu_idade_minima` | `integer` | sim |  |
| 5 | `nu_idade_maxima` | `integer` | sim |  |
| 6 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 7 | `no_sexo` | `character varying(24)` | não |  |

Referenciada por: `rl_proced_grupo_exame`
