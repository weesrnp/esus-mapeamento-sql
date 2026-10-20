# tb_prontuario

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_prontuario` | `bigint` | sim | PK |
| 4 | `qt_referencia` | `bigint` | não |  |
| 5 | `co_prontuario_grupo` | `bigint` | não |  |
| 6 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 7 | `st_cidadao_processado` | `integer` | não |  |

Referenciada por: `rl_cds_prontuario_unidade_saud`, `tb_ad_cidadao`, `tb_agendado`, `tb_alergia`, `tb_antecedente`, `tb_atend`, `tb_atestado`, `tb_cds_atend_individual`, `tb_cirurgias_internacoes`, `tb_cuidado_compartilhado`, `tb_encaminhamento`, `tb_evolucao_odonto`, `tb_exame_requisitado`, `tb_guia_encaminhamento`, `tb_historico_cabecalho`, `tb_ivcf`, `tb_justificativa_prontuario`, `tb_lembrete`, `tb_mchat`, `tb_medicamento_uso_continuo`, `tb_neuro_alter_fenot`, `tb_neuro_fator_risco`, `tb_neuro_marco`, `tb_odontograma`, `tb_orientacao`, `tb_periograma_completo`, `tb_periograma_simplificado`, `tb_pre_natal`, `tb_problema`, `tb_proced_solicitado`, `tb_prontuario_grupo_historico`, `tb_regulacao`, `tb_retificacao_atend`, `tb_risco`, `tb_sinan_notificacao_evolucao`, `tb_tecido_mole`, `tb_vacinacao`
