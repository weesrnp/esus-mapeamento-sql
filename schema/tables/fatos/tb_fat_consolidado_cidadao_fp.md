# tb_fat_consolidado_cidadao_fp

Tipo: tabela  
Grupo: fatos  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_conslddo_ciddo_fp` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_dim_tempo_ultima_ficha` | `bigint` | não |  |
| 4 | `st_teste_orelhinha` | `integer` | não |  |
| 5 | `st_teste_olhinho` | `integer` | não |  |
| 6 | `co_dim_tempo_ult_aval_multi` | `bigint` | não |  |
