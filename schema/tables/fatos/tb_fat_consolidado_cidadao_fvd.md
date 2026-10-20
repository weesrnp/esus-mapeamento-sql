# tb_fat_consolidado_cidadao_fvd

Tipo: tabela  
Grupo: fatos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_conslddo_ciddo_fvd` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_dim_tempo_ultima_ficha` | `bigint` | não |  |
| 4 | `co_dim_tempo_ult_visita_acs` | `bigint` | não |  |
