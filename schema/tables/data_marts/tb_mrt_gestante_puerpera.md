# tb_mrt_gestante_puerpera

Tipo: tabela  
Grupo: data_marts  
Colunas: 29

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `dt_ultima_dum` | `date` | não |  |
| 3 | `dt_desfecho_gestacao` | `date` | não |  |
| 4 | `dt_fim_puerperio` | `date` | não |  |
| 5 | `dt_inicio_gestacao_eco` | `date` | não |  |
| 6 | `st_alto_risco` | `integer` | não |  |
| 7 | `tp_fonte_idade_gestacional` | `character varying(3)` | não |  |
| 8 | `dt_dpp_cronologica` | `date` | não |  |
| 9 | `dt_dpp_ecografica` | `date` | não |  |
| 10 | `nu_consultas_prim_12_sem` | `integer` | não |  |
| 11 | `nu_consultas_pre_natal` | `integer` | não |  |
| 12 | `nu_consultas_odonto` | `integer` | não |  |
| 13 | `nu_consultas_puerperio` | `integer` | não |  |
| 14 | `dt_ult_consulta_pre_natal` | `date` | não |  |
| 15 | `dt_ult_consulta_puerperio` | `date` | não |  |
| 16 | `nu_medicoes_pa` | `integer` | não |  |
| 17 | `nu_medicoes_peso_altura` | `integer` | não |  |
| 18 | `nu_medicoes_altura_uterina` | `integer` | não |  |
| 19 | `st_sifilis_1_tri` | `integer` | não |  |
| 20 | `st_sifilis_3_tri` | `integer` | não |  |
| 21 | `st_hiv_1_tri` | `integer` | não |  |
| 22 | `st_hiv_3_tri` | `integer` | não |  |
| 23 | `st_hepatite_b_1_tri` | `integer` | não |  |
| 24 | `st_hepatite_c_1_tri` | `integer` | não |  |
| 25 | `nu_visitas_dom_pre_natal` | `integer` | não |  |
| 26 | `nu_visitas_dom_puerperio` | `integer` | não |  |
| 27 | `dt_proxima_expiracao` | `date` | não |  |
| 28 | `dt_atualizacao` | `timestamp without time zone` | não |  |
| 29 | `nu_idade_gestacional_desfecho` | `integer` | não |  |
