# tb_mrt_hipertensao

Tipo: tabela  
Grupo: data_marts  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `st_problema_ativo` | `integer` | não |  |
| 3 | `dt_ultima_consulta_hipertensao` | `date` | não |  |
| 4 | `nu_consultas_hipert_36_meses` | `integer` | não |  |
| 5 | `dt_penultima_visita_dom_hipert` | `date` | não |  |
| 6 | `dt_ultima_visita_dom_hipert` | `date` | não |  |
| 7 | `nu_visitas_dom_hipert_36_meses` | `integer` | não |  |
| 8 | `nu_medicoes_pa_36_meses` | `integer` | não |  |
| 9 | `dt_proxima_expiracao` | `date` | não |  |
| 10 | `dt_atualizacao` | `timestamp without time zone` | não |  |
