# tb_perfil

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_perfil` | `bigint` | sim | PK |
| 2 | `no_perfil` | `character varying(100)` | sim |  |
| 3 | `no_perfil_filtro` | `character varying(50)` | sim |  |
| 4 | `qt_referencia` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 6 | `no_perfil_padrao` | `character varying(100)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |
| 9 | `no_tipo_perfil` | `character varying(100)` | sim |  |

Referenciada por: `rl_ator_papel_perfil`, `rl_sistemaexterno_perfil`, `tb_perfil_recurso`
