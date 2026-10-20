# tb_fat_op_acompanhamento_idosa

Tipo: tabela  
Grupo: fatos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_op_acomp_idosa` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `dt_ult_avaliacao_mltdimensionl` | `date` | não |  |
| 4 | `ultimo_co_fat_ivcf` | `bigint` | não |  |
