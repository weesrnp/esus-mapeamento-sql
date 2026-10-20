# tb_info_socio_economicas

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_info_socio_economicas` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 3 | `st_alim_acab_antes_dinh_compr` | `integer` | não |  |
| 4 | `st_comeu_alguns_alim_dinh_aca` | `integer` | não |  |
