# tb_dim_cidadao_pec_grupo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_cidadao_pec_grupo` | `bigint` | sim | PK |
| 2 | `co_identificacao` | `character varying(96)` | não |  |
| 3 | `tp_identificacao` | `integer` | não |  |
| 4 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `co_cidadao_master` | `bigint` | não |  |
