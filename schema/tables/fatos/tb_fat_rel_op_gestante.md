# tb_fat_rel_op_gestante

Tipo: tabela  
Grupo: fatos  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_rel_op_gestante` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_gestacao` | `integer` | não |  |
| 4 | `co_peso` | `integer` | não |  |
| 5 | `dt_inicio_gestacao` | `date` | não |  |
| 6 | `dt_inicio_puerperio` | `date` | não |  |
| 7 | `dt_fim_puerperio` | `date` | não |  |
| 8 | `dt_fao_ultimo` | `date` | não |  |
| 9 | `dt_fvd_ultimo` | `date` | não |  |
| 10 | `st_ultima_vacina_em_dia` | `integer` | não |  |
| 11 | `st_solicitacao_vdrl` | `integer` | não |  |
| 12 | `st_avaliacao_vdrl` | `integer` | não |  |
| 13 | `dt_fai_dum` | `date` | não |  |
| 14 | `dt_ultima_fai_pre_natal` | `date` | não |  |
| 15 | `dt_fai_puerperio` | `date` | não |  |
| 16 | `nu_idade_gestacional` | `integer` | não |  |
