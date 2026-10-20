# tb_conselho_classe

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_conselho_classe` | `bigint` | sim | PK |
| 2 | `sg_conselho_classe` | `character varying(255)` | não |  |
| 3 | `no_conselho_classe` | `character varying(200)` | não |  |
| 4 | `no_curto_conselho` | `character varying(400)` | não |  |
| 5 | `no_conselho_classe_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_atend_prof`, `tb_prof`
