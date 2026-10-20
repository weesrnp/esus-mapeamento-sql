# tb_sinan_notificacao

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_sinan_notificacao` | `bigint` | sim | PK |
| 2 | `no_notificacao` | `character varying(255)` | não |  |
| 3 | `no_notificacao_filtro` | `character varying(255)` | não |  |
| 4 | `co_cid10_principal` | `bigint` | não | FK → tb_cid10 |
| 5 | `no_grupo` | `character varying(255)` | não |  |
| 6 | `st_ativo` | `integer` | sim |  |
| 7 | `no_sexo` | `character varying(24)` | sim |  |
| 8 | `nu_idade_minima` | `integer` | sim |  |
| 9 | `nu_idade_maxima` | `integer` | sim |  |

Referenciada por: `tb_sinan_notificacao_evolucao`
