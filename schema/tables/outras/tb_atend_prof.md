# tb_atend_prof

Tipo: tabela  
Grupo: outras  
Colunas: 26

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_prof` | `bigint` | sim | PK |
| 2 | `dt_fim` | `timestamp without time zone` | não |  |
| 3 | `dt_inicio` | `timestamp without time zone` | não |  |
| 4 | `co_atend` | `bigint` | sim | FK → tb_atend |
| 5 | `co_atend_prof_tipo_encam_intrn` | `bigint` | não | FK → tb_atend_prof_tipo_encam_intrn |
| 6 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 7 | `tp_atend_prof` | `bigint` | sim | FK → tb_tipo_atend_prof |
| 8 | `st_atend_prof` | `bigint` | sim | FK → tb_status_atend_prof |
| 9 | `st_atend_enviado` | `integer` | não |  |
| 10 | `co_unico_ad_cidadao` | `bigint` | não |  |
| 11 | `co_classificacao_risco` | `bigint` | não | FK → tb_classificacao_risco |
| 12 | `co_unico_atend_prof` | `character varying(96)` | não |  |
| 13 | `tp_atend` | `bigint` | não | FK → tb_tipo_atend |
| 14 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 15 | `co_uf_emissora_conselho_classe` | `bigint` | não | FK → tb_uf |
| 16 | `co_conselho_classe` | `bigint` | não | FK → tb_conselho_classe |
| 17 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 18 | `co_racionalidade_saude` | `bigint` | não | FK → tb_racionalidade_saude |
| 19 | `co_lotacao_atend_compartilhado` | `bigint` | não | FK → tb_lotacao |
| 20 | `st_registro_historico` | `integer` | não |  |
| 21 | `nu_revisao` | `integer` | não |  |
| 22 | `st_cancelado` | `integer` | não |  |
| 23 | `co_estagio` | `bigint` | não | FK → tb_estagio |
| 24 | `co_marcador_consumo_alim` | `bigint` | não | FK → tb_marcador_consumo_alimentar |
| 25 | `tp_participacao_cidadao` | `bigint` | não | FK → tb_tipo_participacao_atend |
| 26 | `tp_participacao_prof_convidado` | `bigint` | não | FK → tb_tipo_participacao_atend |

Referenciada por: `rl_arquivo_atendprof`, `rl_atend_proced`, `rl_atend_prof_conduta`, `rl_atend_prof_pic`, `rl_evolucao_avaliacao_ciap_cid`, `rl_evolucao_plano_ciap`, `rl_evolucao_subjetivo_ciap`, `tb_alergia_evolucao`, `tb_antecedente_historico`, `tb_assinatura_eletronica_atend`, `tb_atend`, `tb_atend_obs`, `tb_atend_prof_ad`, `tb_atend_prof_obs`, `tb_atend_prof_odonto`, `tb_atend_prof_pre_natal`, `tb_atend_prof_puericultura`, `tb_atestado`, `tb_cirurgias_internacoes`, `tb_cuidado_compartilhado`, `tb_encaminhamento`, `tb_evolucao_avaliacao`, `tb_evolucao_objetivo`, `tb_evolucao_plano`, `tb_evolucao_subjetivo`, `tb_exame_requisitado`, `tb_guia_encaminhamento`, `tb_ivcf`, `tb_lembrete`, `tb_mchat`, `tb_medicao`, `tb_neuro_alter_fenot_evolucao`, `tb_neuro_fator_risco_evolucao`, `tb_neuro_marco_evolucao`, `tb_orientacao`, `tb_problema_evolucao`, `tb_qst_questionario_respondido`, `tb_rascunho_atend_prof`, `tb_receita_medicamento`, `tb_regulacao`, `tb_requisicao_exame`, `tb_risco_evolucao`, `tb_sinan_notificacao_evolucao`, `tb_sol_exame_citopatologico`, `tb_sol_exame_mamografia`, `tb_vacinacao`
