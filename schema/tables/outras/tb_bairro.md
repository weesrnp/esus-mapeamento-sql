# tb_bairro

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_bairro` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 3 | `nu_dne` | `character varying(8)` | não |  |
| 4 | `no_bairro` | `character varying(144)` | sim |  |
| 5 | `no_bairro_filtro` | `character varying(144)` | sim |  |

Referenciada por: `tb_logradouro`
