# tb_terra_indigena

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_terra_indigena` | `bigint` | sim | PK |
| 2 | `no_terra_indigena` | `character varying(255)` | sim |  |
| 3 | `dt_inclusao` | `date` | sim |  |
| 4 | `dt_extincao` | `date` | não |  |
| 5 | `st_ativo` | `integer` | sim |  |

Referenciada por: `tb_aldeia`
