# tl_antecedente

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 35

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_prontuario` | `bigint` | sim | PK |
| 4 | `ds_cirurgia` | `character varying(400)` | não |  |
| 5 | `ds_internacao` | `character varying(400)` | não |  |
| 6 | `ds_alergia_medicamento` | `character varying(400)` | não |  |
| 7 | `ds_observacao` | `character varying(400)` | não |  |
| 8 | `ds_aborto` | `character varying(255)` | não |  |
| 9 | `ds_parto` | `character varying(255)` | não |  |
| 10 | `qt_aborto` | `character varying(255)` | não |  |
| 11 | `ds_natimorto` | `character varying(255)` | não |  |
| 12 | `ds_recem_nascido` | `character varying(255)` | não |  |
| 13 | `ds_cesaria` | `character varying(255)` | não |  |
| 14 | `ds_parto_domiciliar` | `character varying(255)` | não |  |
| 15 | `ds_filho_vivo` | `character varying(255)` | não |  |
| 16 | `ds_obito_antes_primeira_semana` | `character varying(255)` | não |  |
| 17 | `ds_gestacao` | `character varying(255)` | não |  |
| 18 | `ds_parto_vaginal` | `character varying(255)` | não |  |
| 19 | `ds_obito_apos_primeira_semana` | `character varying(255)` | não |  |
| 20 | `dt_ultimo_parto` | `timestamp without time zone` | não |  |
| 21 | `qt_recem_nascido_acima` | `character varying(255)` | não |  |
| 22 | `qt_nascidos_vivos` | `character varying(255)` | não |  |
| 24 | `dt_ultima_atualizacao_pessoal` | `timestamp with time zone` | não |  |
| 25 | `dt_ultima_atualizacao_gestacnl` | `timestamp with time zone` | não |  |
| 26 | `nu_peso` | `character varying(255)` | não |  |
| 27 | `nu_altura` | `character varying(255)` | não |  |
| 28 | `nu_perimetro_cefalico` | `character varying(255)` | não |  |
| 29 | `nu_apgar_um` | `character varying(255)` | não |  |
| 30 | `nu_apgar_cinco` | `character varying(255)` | não |  |
| 31 | `nu_apgar_dez` | `character varying(255)` | não |  |
| 32 | `tp_gravidez` | `character varying(255)` | não |  |
| 33 | `tp_parto` | `character varying(255)` | não |  |
| 34 | `nu_ig_semanas` | `character varying(255)` | não |  |
| 35 | `nu_ig_dias` | `character varying(255)` | não |  |
| 36 | `dt_ultima_atualizacao_puericu` | `timestamp with time zone` | não |  |
