# tb_cid10

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cid10` | `bigint` | sim | PK |
| 2 | `nu_cid10` | `character varying(4)` | sim |  |
| 3 | `tp_agravo` | `bigint` | sim | FK → tb_tipo_agravo |
| 5 | `no_cid10` | `character varying(400)` | sim |  |
| 6 | `no_cid10_filtro` | `character varying(400)` | sim |  |
| 7 | `st_ativo` | `integer` | sim |  |
| 8 | `no_sexo` | `character varying(24)` | não |  |
| 9 | `nu_cid10_filtro` | `character varying(255)` | não |  |

Referenciada por: `rl_atend_proced`, `rl_ciap_cid10`, `rl_cid10_cid11`, `rl_evolucao_avaliacao_ciap_cid`, `rl_grupo_condicao_ciap_cid`, `rl_proced_cid10`, `tb_ad_cidadao`, `tb_antecedente_familiar_ciap`, `tb_atend_prof_ad`, `tb_atestado`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_aval_elegibilidade`, `tb_cds_vacina`, `tb_cuidado_compartilhado`, `tb_encaminhamento`, `tb_guia_encaminhamento`, `tb_parte_bucal_cid10`, `tb_problema`, `tb_receita_medicamento`, `tb_registro_vacinacao`, `tb_requisicao_exame`, `tb_sinan_notificacao`, `tb_tecido_mole`
