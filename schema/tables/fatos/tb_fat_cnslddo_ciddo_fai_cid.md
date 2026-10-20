# tb_fat_cnslddo_ciddo_fai_cid

Tipo: tabela  
Grupo: fatos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cnsldo_cido_fai_cid` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_dim_cid` | `bigint` | não |  |
