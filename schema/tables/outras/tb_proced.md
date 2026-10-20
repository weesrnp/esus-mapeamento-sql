# tb_proced

Tipo: tabela  
Grupo: outras  
Colunas: 22

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_proced` | `bigint` | sim | PK |
| 2 | `no_proced` | `character varying(260)` | sim |  |
| 3 | `no_proced_filtro` | `character varying(260)` | sim |  |
| 4 | `nu_idade_minima` | `integer` | sim |  |
| 5 | `nu_idade_maxima` | `integer` | sim |  |
| 6 | `co_proced` | `character varying(255)` | sim |  |
| 7 | `dt_competencia` | `character varying(6)` | sim |  |
| 8 | `st_ativo` | `integer` | sim |  |
| 9 | `st_masculino` | `integer` | não |  |
| 10 | `st_feminino` | `integer` | não |  |
| 11 | `co_complexidade` | `bigint` | não |  |
| 12 | `co_proced_grupo` | `bigint` | não |  |
| 13 | `co_proced_subgrupo` | `bigint` | não |  |
| 14 | `co_proced_forma_organizacional` | `bigint` | não |  |
| 16 | `st_proced_padrao_dab` | `integer` | não |  |
| 17 | `st_proced_dab` | `integer` | não |  |
| 18 | `co_proced_filtro` | `character varying(255)` | não |  |
| 19 | `co_proced_ref_sigtap` | `bigint` | não |  |
| 20 | `st_idade_aplicavel` | `integer` | sim |  |
| 21 | `tp_proced` | `character varying(30)` | não |  |
| 22 | `st_plano` | `integer` | não |  |
| 24 | `dt_ultima_atualizacao` | `timestamp without time zone` | sim |  |

Referenciada por: `rl_atend_proced`, `rl_cds_atend_dom_proced`, `rl_cds_atend_individual_exame`, `rl_cds_atend_odonto_proced`, `rl_evolucao_odonto_proced`, `rl_evolucao_plano_ciap`, `rl_proced_cbo`, `rl_proced_cds_proced`, `rl_proced_cid10`, `rl_proced_exame_detalhe`, `rl_proced_grupo_exame`, `tb_atividade_coletiva`, `tb_cds_ficha_ativ_col`, `tb_exame_requisitado`, `tb_parte_bucal_proced`, `tb_proced_filtro`, `tb_proced_solicitado`
