# tb_mrt_condicoes_saude

Tipo: tabela  
Grupo: data_marts  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `dt_ultimo_atend_medico` | `date` | não |  |
| 3 | `dt_ultimo_atend_enfermagem` | `date` | não |  |
| 4 | `dt_ultimo_atend_odonto` | `date` | não |  |
| 5 | `dt_ultimo_atendimento` | `date` | não |  |
| 6 | `dt_ultima_visita` | `date` | não |  |
| 7 | `nu_ultimo_peso` | `character varying(10)` | não |  |
| 8 | `dt_ultima_medicao_peso` | `date` | não |  |
| 9 | `nu_ultima_altura` | `character varying(10)` | não |  |
| 10 | `dt_ultima_medicao_altura` | `date` | não |  |
| 11 | `nu_ultima_pressao_arterial` | `character varying(10)` | não |  |
| 12 | `dt_ultima_medicao_pa` | `date` | não |  |
| 13 | `st_diabetes` | `integer` | não |  |
| 14 | `st_hipertensao` | `integer` | não |  |
| 15 | `st_idoso` | `integer` | não |  |
| 16 | `st_desenvolvimento_infantil` | `integer` | não |  |
| 17 | `st_saude_bucal` | `integer` | não |  |
| 18 | `st_saude_mulher` | `integer` | não |  |
| 19 | `st_gestante_puerpera` | `integer` | não |  |
| 20 | `dt_atualizacao` | `timestamp without time zone` | não |  |
| 21 | `st_lookup_etl` | `integer` | não |  |
| 22 | `ds_vigencia_bolsa_familia` | `character varying(6)` | não |  |
| 23 | `dt_proxima_expiracao` | `date` | não |  |
