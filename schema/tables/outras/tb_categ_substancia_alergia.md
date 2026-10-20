# tb_categ_substancia_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cat_substancia_alergia` | `bigint` | sim | PK |
| 2 | `no_categ_substancia_alergia` | `character varying(15)` | sim |  |
| 3 | `no_identificador` | `character varying(15)` | sim |  |
| 4 | `no_code` | `character varying(15)` | sim |  |

Referenciada por: `tb_substancia_cbara`, `tb_substancia_espec_alergia`
