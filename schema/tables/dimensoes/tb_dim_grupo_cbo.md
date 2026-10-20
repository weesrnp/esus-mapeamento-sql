# tb_dim_grupo_cbo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_grupo_cbo` | `bigint` | sim | PK |
| 2 | `nu_grupo_cbo` | `character varying(10)` | não |  |
| 3 | `ds_grupo_cbo` | `character varying(100)` | não |  |
| 4 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 5 | `ds_filtro` | `character varying(100)` | não |  |
