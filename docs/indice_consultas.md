# Índice de consultas

41 consultas em 5 categorias. Tabelas marcadas com `*` não existem no esquema extraído.

## busca_ativa

| Consulta | Indicador | Tabelas | Parâmetros |
|---|---|---|---|
| [Gestantes com Pré-Natal Atrasado (Sem consulta há 30 dias)](../sql/busca_ativa/01_gestantes_com_pre_natal_atrasado_sem_consulta_ha_3.sql) | - | `tb_cidadao`, `tb_dim_equipe`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec` | - |
| [Mulheres e Homens Trans de 25 a 64 Anos sem Rastreamento do Câncer do Colo do Útero (C7, Prática A)](../sql/busca_ativa/02_mulheres_de_25_a_64_anos_sem_rastreamento_do_colo_do_utero.sql) | C7 | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend_proced` | `:fim`, `:ine_1` |
| [Busca Ativa de Gestantes sem Testes Rápidos ou sem Vacina dTpa (Indicador C3 - Detecção Completa)](../sql/busca_ativa/03_busca_ativa_de_gestantes_sem_testes_rapidos_ou_sem.sql) | C3 | `tb_cidadao`, `tb_dim_equipe`, `tb_dim_imunobiologico`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |
| [Busca Ativa de Hipertensos sem Aferição de PA no Semestre (Indicador C5 - Filtro Detalhado)](../sql/busca_ativa/04_busca_ativa_de_hipertensos_sem_afericao_de_pa_no_s.sql) | C5 | `tb_cidadao`, `tb_dim_equipe`, `tb_fat_atendimento_individual`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | - |
| [Busca Ativa de Diabéticos sem Solicitação/Avaliação de Hemoglobina Glicada (Indicador C4 - Filtro Detalhado)](../sql/busca_ativa/05_busca_ativa_de_diabeticos_sem_solicitacao_avaliaca.sql) | C4 | `tb_cidadao`, `tb_dim_equipe`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | - |
| [Monitoramento do Indicador X do ProAPS (População 40-74 anos com RCV Avaliado)](../sql/busca_ativa/07_monitoramento_do_indicador_x_do_proaps_populacao_4.sql) | - | `tb_dim_ciap`, `tb_fat_atd_ind_problemas`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec` | - |
| [Monitoramento da Cobertura de Avaliação do Idoso (Indicador VII ProAPS)](../sql/busca_ativa/08_monitoramento_da_cobertura_de_avaliacao_do_idoso_i.sql) | - | `tb_dim_ciap`, `tb_dim_procedimento`, `tb_fat_atd_ind_problemas`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend` | - |
| [Crianças de 16 a 30 Meses Vinculadas à Equipe para Rastreamento M-CHAT-R/F](../sql/busca_ativa/09_criancas_de_16_a_30_meses_para_rastreamento_m_chat.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_dim_cbo`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec` | `:fim`, `:ine_1` |
| [Crianças do Bolsa Família Menores de 7 Anos sem Peso e Altura no Período](../sql/busca_ativa/10_criancas_do_bolsa_familia_menores_de_7_anos_sem_peso_e_altura.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_cidadao_bolsa_familia`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_visita_domiciliar`, `tb_importacao_bolsa_familia` | `:fim`, `:ini` |
| [Gestantes do Bolsa Família sem Consulta de Pré-Natal no Período](../sql/busca_ativa/11_gestantes_do_bolsa_familia_sem_consulta_de_pre_natal_no_periodo.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_cidadao_bolsa_familia`, `tb_dim_cbo`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_importacao_bolsa_familia` | `:fim`, `:ini` |
| [Acompanhamento das Condicionalidades de Saúde do Bolsa Família por Equipe](../sql/busca_ativa/12_acompanhamento_das_condicionalidades_do_bolsa_familia_por_equipe.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_cidadao_bolsa_familia`, `tb_dim_cbo`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_visita_domiciliar`, `tb_importacao_bolsa_familia` | `:fim`, `:ini` |
| [Beneficiários do Bolsa Família sem Visita Domiciliar do ACS no Período](../sql/busca_ativa/13_beneficiarios_do_bolsa_familia_sem_visita_do_acs_no_periodo.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_cidadao_bolsa_familia`, `tb_dim_cbo`, `tb_dim_desfecho_visita`, `tb_fat_cidadao_pec`, `tb_fat_visita_domiciliar`, `tb_importacao_bolsa_familia` | `:fim`, `:ini` |

## cadastro_e_territorio

| Consulta | Indicador | Tabelas | Parâmetros |
|---|---|---|---|
| [Vinculados com Cadastro Individual (MICI) Vencido: 24 Meses sem Atualização](../sql/cadastro_e_territorio/01_vinculados_com_cadastro_individual_vencido_24_meses.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_dim_tipo_saida_cadastro`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | `:fim`, `:ine_1` |
| [Duplicidades de CPF no Cadastro de Cidadãos](../sql/cadastro_e_territorio/02_duplicidades_de_cpf_no_cadastro_de_cidadaos.sql) | - | `tb_cidadao` | - |
| [Resumo Mensal de Visitas por ACS e Desfecho](../sql/cadastro_e_territorio/03_resumo_mensal_de_visitas_por_acs_e_desfecho.sql) | - | `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_profissional`, `tb_fat_visita_domiciliar` | `:dt_fim`, `:dt_inicio` |
| [Função PL/pgSQL no PostgreSQL](../sql/cadastro_e_territorio/04_funcao_pl_pgsql_no_postgresql.sql) | - |  | - |
| [Query de Detecção de Munícipes com Atendimento no PEC sem Cadastro Territorial](../sql/cadastro_e_territorio/05_query_de_deteccao_de_municipes_com_atendimento_no_.sql) | - | `tb_cidadao`, `tb_dim_equipe`, `tb_fat_atendimento_individual`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | - |
| [Lista Deduplicada de Vinculados por Equipe (Padrão para Busca Ativa)](../sql/cadastro_e_territorio/06_lista_deduplicada_de_vinculados_por_equipe.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao` | `:nu_ine` |
| [Vinculados à Equipe sem Visita Domiciliar do ACS desde a Data de Corte](../sql/cadastro_e_territorio/07_vinculados_sem_visita_do_acs_desde_a_data_de_corte.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_dim_cbo`, `tb_dim_desfecho_visita`, `tb_fat_cidadao_pec`, `tb_fat_visita_domiciliar` | `:ine_1`, `:ini` |

## imunizacao

| Consulta | Indicador | Tabelas | Parâmetros |
|---|---|---|---|
| [Doses Aplicadas por Imunobiológico no Quadrimestre](../sql/imunizacao/01_doses_aplicadas_por_imunobiologico_no_quadrimestre.sql) | - | `tb_dim_imunobiologico`, `tb_fat_vacinacao_vacina` | `:dt_fim`, `:dt_inicio` |
| [Cobertura Vacinal do Esquema Básico (1 Ano) por Equipe](../sql/imunizacao/02_cobertura_vacinal_do_esquema_basico_1_ano_por_equi.sql) | - | `tb_dim_dose_imunobiologico`, `tb_dim_equipe`, `tb_dim_imunobiologico`, `tb_dim_unidade_saude`, `tb_fat_cidadao_pec`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |
| [Busca Ativa Nominal de Crianças com Vacinação Atrasada](../sql/imunizacao/03_busca_ativa_nominal_de_criancas_com_vacinacao_atra.sql) | - | `tb_cidadao`, `tb_dim_dose_imunobiologico`, `tb_dim_equipe`, `tb_dim_imunobiologico`, `tb_fat_cidadao_pec`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |
| [Monitoramento de Taxa de Abandono Vacinal (D1 vs D3)](../sql/imunizacao/04_monitoramento_de_taxa_de_abandono_vacinal_d1_vs_d3.sql) | - | `tb_dim_dose_imunobiologico`, `tb_dim_imunobiologico`, `tb_fat_vacinacao_vacina` | - |
| [Auditoria de Lotes Próximos do Vencimento no Estoque](../sql/imunizacao/05_auditoria_de_lotes_proximos_do_vencimento_no_estoq.sql) | - | `tb_imunobiologico`, `tb_imunobiologico_fabricante`, `tb_imunobiologico_lote`, `tb_unidade_saude` | - |
| [Query 2: Taxa de Abandono Vacinal por Unidade de Saúde (D1 vs D3 Pentavalente)](../sql/imunizacao/07_query_2_taxa_de_abandono_vacinal_por_unidade_de_sa.sql) | - | `tb_dim_imunobiologico`, `tb_dim_unidade_saude`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |
| [Auditoria de Doses Inválidas no Banco de Dados (Detecção de Erros)](../sql/imunizacao/09_auditoria_de_doses_invalidas_no_banco_de_dados_det.sql) | - | `tb_dim_dose_imunobiologico`, `tb_dim_imunobiologico`, `tb_fat_cidadao_pec`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |
| [Total de Doses Aplicadas por Sala de Vacinas e Vacinador no Mês](../sql/imunizacao/10_total_de_doses_aplicadas_por_sala_de_vacinas_e_vac.sql) | - | `tb_dim_cbo`, `tb_dim_profissional`, `tb_dim_unidade_saude`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | - |

## indicadores_cofinanciamento

| Consulta | Indicador | Tabelas | Parâmetros |
|---|---|---|---|
| [Indicador C3 (Prática A): Captação Precoce do Pré-Natal por Equipe](../sql/indicadores_cofinanciamento/01_indicador_c3_pratica_a_captacao_precoce_por_equipe.sql) | C3 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec` | `:fim`, `:ini` |
| [Indicador C1: Mais Acesso à APS por Equipe (Demanda Programada sobre o Total)](../sql/indicadores_cofinanciamento/04_indicador_c1_mais_acesso_por_equipe.sql) | C1 | `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_tipo_atendimento`, `tb_fat_atendimento_individual` | `:fim`, `:ini` |
| [Indicador C4: Validação Agregada por Equipe (Diabetes)](../sql/indicadores_cofinanciamento/05_indicador_c4_diabetes_por_equipe.sql) | C4 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_visita_domiciliar` | `:fim`, `:ine_1`, `:ine_2`, `:ine_3`, `:ini12`, `:ini6` |
| [Indicador B3: Taxa de Exodontia de Dentes Permanentes por Equipe de Saúde Bucal](../sql/indicadores_cofinanciamento/06_indicador_b3_taxa_de_exodontia_por_equipe.sql) | B3 | `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_procedimento`, `tb_fat_atend_odonto_proced` | `:fim`, `:ini` |
| [Exodontias de Dentes Permanentes: Lista para Auditoria do B3](../sql/indicadores_cofinanciamento/07_exodontias_permanentes_lista_para_auditoria.sql) | B3 | `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_procedimento`, `tb_fat_atend_odonto_proced`, `tb_fat_cidadao_pec` | `:fim`, `:ini` |
| [Indicador M1: Média de Atendimentos por Pessoa pela eMulti](../sql/indicadores_cofinanciamento/08_indicador_m1_media_de_atendimentos_por_pessoa_emulti.sql) | M1 | `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_tipo_atividade`, `tb_fat_atendimento_individual`, `tb_fat_atividade_coletiva`, `tb_fat_atvdd_coletiva_part`, `tb_fat_cidadao_pec` | `:fim`, `:ine_1`, `:ini` |
| [Vínculo e Acompanhamento: Dimensão Cadastro (X) por Equipe](../sql/indicadores_cofinanciamento/09_vinculo_dimensao_cadastro_por_equipe.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_dim_tipo_saida_cadastro`, `tb_fat_cad_dom_familia`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | `:fim`, `:ine_1`, `:pessoas_parametro` |
| [Indicador C3: Validação Nominal por Pessoa (Pré-Natal)](../sql/indicadores_cofinanciamento/10_indicador_c3_pre_natal_por_pessoa.sql) | C3 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_dim_imunobiologico`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | `:cpf`, `:fim`, `:ini` |
| [Indicador C3: Validação Agregada por Equipe (Pré-Natal)](../sql/indicadores_cofinanciamento/11_indicador_c3_pre_natal_por_equipe.sql) | C3 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_dim_imunobiologico`, `tb_dim_procedimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina` | `:ine_1`, `:ine_2`, `:ine_3` |
| [Indicador C5: Validação Nominal por Pessoa (Hipertensão)](../sql/indicadores_cofinanciamento/12_indicador_c5_hipertensao_por_pessoa.sql) | C5 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_unidade_saude`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_visita_domiciliar` | `:cpf`, `:fim`, `:ine_1`, `:ine_2`, `:ine_3`, `:ini12`, `:ini6` |
| [Indicador C5: Validação Agregada por Equipe (Hipertensão)](../sql/indicadores_cofinanciamento/13_indicador_c5_hipertensao_por_equipe.sql) | C5 | `tb_acomp_cidadaos_vinculados`, `tb_dim_cbo`, `tb_dim_equipe`, `tb_dim_procedimento`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_visita_domiciliar` | `:fim`, `:ine_1`, `:ine_2`, `:ine_3`, `:ini12`, `:ini6` |
| [Painel de Produção por Público-Alvo (Crianças, Idosos e Adultos de 40 a 74 Anos)](../sql/indicadores_cofinanciamento/14_painel_de_producao_por_publico_alvo.sql) | - | `tb_acomp_cidadaos_vinculados`, `tb_cidadao`, `tb_fat_atendimento_individual`, `tb_fat_cidadao_pec` | `:fim`, `:ini` |

## modelagem_dw

| Consulta | Indicador | Tabelas | Parâmetros |
|---|---|---|---|
| [DDL da Camada Staging (Procedimentos de Saúde Bucal e Última Ficha de Cadastro Individual)](../sql/modelagem_dw/04_ddl_da_camada_staging_postgresql.sql) | - | `tb_dim_procedimento`, `tb_dim_tipo_saida_cadastro`, `tb_fat_atend_odonto_proced`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec` | - |
| [Padrão Anti-Fan-Out para Subfatos Satélites (CTEs Independentes)](../sql/modelagem_dw/06_padrao_anti_fan_out_para_subfatos_satelites_ctes_i.sql) | - | `tb_dim_procedimento`, `tb_fat_atd_ind_medicamentos`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atendimento_individual` | - |
