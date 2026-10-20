# tb_substancia_cbara

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_substancia_alergia` | `bigint` | sim | PK |
| 2 | `co_cat_substancia_alergia` | `bigint` | sim | FK → tb_categ_substancia_alergia |
| 3 | `no_substancia_alergia` | `character varying(60)` | sim |  |
| 4 | `no_sinonimo` | `character varying(60)` | não |  |
| 5 | `no_code` | `character varying(40)` | sim |  |
| 6 | `no_filtro_substancia_alergia` | `character varying(121)` | não |  |

Referenciada por: `tb_substancia_espec_alergia`
