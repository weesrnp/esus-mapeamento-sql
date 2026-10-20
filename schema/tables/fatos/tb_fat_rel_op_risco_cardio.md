# tb_fat_rel_op_risco_cardio

Tipo: tabela  
Grupo: fatos  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_rel_op_risco_cardio` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `dt_hipertensao_arterial_fai` | `date` | não |  |
| 4 | `dt_hiprtnsao_arterial_fci_sim` | `date` | não |  |
| 5 | `dt_hiprtnsao_arterial_fci_nao` | `date` | não |  |
| 6 | `dt_diabetes_fai` | `date` | não |  |
| 7 | `dt_diabetes_fci_sim` | `date` | não |  |
| 8 | `dt_diabetes_fci_nao` | `date` | não |  |
| 9 | `dt_tabagismo_fai` | `date` | não |  |
| 10 | `dt_tabagismo_fci_sim` | `date` | não |  |
| 11 | `dt_tabagismo_fci_nao` | `date` | não |  |
| 12 | `dt_obesidade_fai` | `date` | não |  |
| 13 | `nu_imc` | `double precision` | não |  |
| 14 | `dt_rastreamento_risco_cardio` | `date` | não |  |
| 15 | `dt_ultima_visita_domiciliar` | `date` | não |  |
| 16 | `dt_atend_odonto` | `date` | não |  |
| 17 | `dt_atend_individual` | `date` | não |  |
| 18 | `st_risco_cardio` | `integer` | não |  |
