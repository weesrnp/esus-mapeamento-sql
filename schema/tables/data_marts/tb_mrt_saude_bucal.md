# tb_mrt_saude_bucal

Tipo: tabela  
Grupo: data_marts  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `dt_primeira_consulta` | `date` | não |  |
| 3 | `dt_tratamento_concluido` | `date` | não |  |
| 4 | `dt_ult_trat_rest_atraumatico` | `date` | não |  |
| 5 | `dt_escovacao_supervisionada_ac` | `date` | não |  |
| 6 | `nu_procedimentos_preventivos` | `integer` | não |  |
| 7 | `nu_exodontias_dentes` | `integer` | não |  |
| 8 | `dt_atualizacao` | `timestamp without time zone` | não |  |
