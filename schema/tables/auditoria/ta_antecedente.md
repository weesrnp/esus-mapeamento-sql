# ta_antecedente

Tipo: tabela  
Grupo: auditoria  
Colunas: 35

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taantecedente` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_prontuario` | `bigint` | não |  |
| 5 | `ds_observacao` | `character varying(4000)` | não |  |
| 6 | `ds_aborto` | `character varying(255)` | não |  |
| 7 | `ds_parto` | `character varying(255)` | não |  |
| 8 | `qt_aborto` | `character varying(255)` | não |  |
| 9 | `ds_natimorto` | `character varying(255)` | não |  |
| 10 | `ds_recem_nascido` | `character varying(255)` | não |  |
| 11 | `ds_cesaria` | `character varying(255)` | não |  |
| 12 | `ds_parto_domiciliar` | `character varying(255)` | não |  |
| 13 | `ds_filho_vivo` | `character varying(255)` | não |  |
| 14 | `ds_obito_antes_primeira_semana` | `character varying(255)` | não |  |
| 15 | `ds_gestacao` | `character varying(255)` | não |  |
| 16 | `ds_parto_vaginal` | `character varying(255)` | não |  |
| 17 | `ds_obito_apos_primeira_semana` | `character varying(255)` | não |  |
| 18 | `dt_ultimo_parto` | `timestamp without time zone` | não |  |
| 19 | `qt_recem_nascido_acima` | `character varying(255)` | não |  |
| 20 | `qt_nascidos_vivos` | `character varying(255)` | não |  |
| 21 | `st_parto_menos_de_um_ano` | `integer` | não |  |
| 22 | `dt_ultima_atualizacao_pessoal` | `timestamp with time zone` | não |  |
| 23 | `dt_ultima_atualizacao_gestacnl` | `timestamp with time zone` | não |  |
| 24 | `nu_peso` | `character varying(255)` | não |  |
| 25 | `nu_altura` | `character varying(255)` | não |  |
| 26 | `nu_perimetro_cefalico` | `character varying(255)` | não |  |
| 27 | `nu_apgar_um` | `character varying(255)` | não |  |
| 28 | `nu_apgar_cinco` | `character varying(255)` | não |  |
| 29 | `nu_apgar_dez` | `character varying(255)` | não |  |
| 30 | `tp_gravidez` | `character varying(255)` | não |  |
| 31 | `tp_parto` | `character varying(255)` | não |  |
| 32 | `nu_ig_semanas` | `character varying(255)` | não |  |
| 33 | `nu_ig_dias` | `character varying(255)` | não |  |
| 34 | `dt_ultima_atualizacao_puericu` | `timestamp with time zone` | não |  |
| 35 | `co_desfecho_ultima_gestacao` | `character varying(255)` | não |  |
