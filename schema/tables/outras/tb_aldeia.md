# tb_aldeia

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_aldeia` | `bigint` | sim | PK |
| 2 | `co_polo_base` | `bigint` | sim | FK → tb_polo_base |
| 3 | `co_terra_indigena` | `bigint` | sim | FK → tb_terra_indigena |
| 4 | `co_tipo_terra` | `bigint` | sim | FK → tb_tipo_terra |
| 5 | `co_tipo_area` | `bigint` | sim | FK → tb_tipo_area |
| 6 | `no_aldeia` | `character varying(100)` | sim |  |
| 7 | `no_aldeia_filtro` | `character varying(100)` | sim |  |
| 8 | `nu_cep` | `character varying(8)` | não |  |
| 9 | `dt_inclusao` | `date` | sim |  |
| 10 | `dt_extincao` | `date` | não |  |
| 11 | `nu_ano_contato_indigena` | `bigint` | não |  |
| 12 | `st_registro_ativo` | `integer` | não |  |

Referenciada por: `rl_aldeia_localidade`, `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`, `tb_cidadao_aldeado`
