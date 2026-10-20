# tb_localidade

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_localidade` | `bigint` | sim | PK |
| 2 | `co_uf` | `bigint` | sim | FK → tb_uf |
| 3 | `nu_dne` | `character varying(8)` | sim |  |
| 4 | `no_localidade` | `character varying(72)` | sim |  |
| 5 | `nu_cep` | `character varying(8)` | não |  |
| 6 | `tp_localidade` | `bigint` | sim | FK → tb_tipo_localidade |
| 7 | `co_situacao_localidade` | `bigint` | sim | FK → tb_situacao_localidade |
| 8 | `co_ibge` | `character varying(7)` | não |  |
| 9 | `no_localidade_filtro` | `character varying(72)` | sim |  |
| 10 | `st_ativo` | `integer` | não |  |

Referenciada por: `rl_aldeia_localidade`, `rl_credencial_integ_localidade`, `rl_prof_municipio`, `rl_sistemaexterno_localidade`, `tb_adm_municipal`, `tb_atividade_coletiva`, `tb_bairro`, `tb_cbo_atend`, `tb_cds_aval_elegibilidade`, `tb_cds_cad_domiciliar`, `tb_cds_cad_individual`, `tb_cds_domicilio`, `tb_cds_ficha_atend_domiciliar`, `tb_cds_ficha_atend_individual`, `tb_cds_ficha_atend_odonto`, `tb_cds_ficha_ativ_col`, `tb_cds_ficha_consumo_alimentar`, `tb_cds_ficha_proced`, `tb_cds_ficha_vacinacao`, `tb_cds_ficha_visita_domiciliar`, `tb_cds_ficha_zika_microcefalia`, `tb_cfg_agenda_municipal`, `tb_cfg_certificado`, `tb_cidadao`, `tb_cnes`, `tb_config_atencao_domiciliar`, `tb_dsei`, `tb_gestor_municipal`, `tb_grupo_exame`, `tb_importacao_bolsa_familia`, `tb_importacao_cnes`, `tb_inep`, `tb_perfil`, `tb_polo_base`, `tb_prof`, `tb_tipo_servico`, `tb_unidade_saude`, `tb_vinculacao_servico`
