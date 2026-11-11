# tb_mrt_diabetes

Tipo: tabela  
Grupo: data_marts  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `vl_hemoglobina_glicada` | `numeric(5,2)` | não |  |
| 3 | `dt_exame_hemoglobina_glicada` | `date` | não |  |
| 4 | `dt_solicitacao_hemoglobin_glcd` | `date` | não |  |
| 5 | `dt_avaliacao_pes` | `date` | não |  |
| 6 | `st_problema_ativo` | `integer` | não |  |
| 7 | `dt_ultima_consulta_diabetes` | `date` | não |  |
| 8 | `nu_consultas_diabetes_36_meses` | `integer` | não |  |
| 9 | `dt_penultima_visita_dom_diabts` | `date` | não |  |
| 10 | `dt_ultima_visita_dom_diabetes` | `date` | não |  |
| 11 | `nu_visitas_dom_diabetes_36_mss` | `integer` | não |  |
| 12 | `dt_proxima_expiracao` | `date` | não |  |
| 13 | `dt_atualizacao` | `timestamp without time zone` | não |  |
