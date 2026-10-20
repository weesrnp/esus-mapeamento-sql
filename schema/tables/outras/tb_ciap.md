# tb_ciap

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ciap` | `bigint` | sim | PK |
| 2 | `co_ciap` | `character varying(6)` | não |  |
| 3 | `ds_ciap` | `character varying(255)` | não |  |
| 4 | `ds_ciap_filtro` | `character varying(255)` | sim |  |
| 6 | `st_filtro_padrao` | `integer` | não |  |
| 7 | `co_cid10_encaminhamento` | `bigint` | não |  |
| 8 | `no_sexo` | `character varying(24)` | não |  |

Referenciada por: `rl_cds_atend_individual_ciap`, `rl_ciap_cid10`, `rl_evolucao_avaliacao_ciap_cid`, `rl_evolucao_plano_ciap`, `rl_evolucao_subjetivo_ciap`, `rl_grupo_condicao_ciap_cid`, `tb_antecedente_familiar_ciap`, `tb_cds_atend_domiciliar`, `tb_ciap_dab`, `tb_ciap_ms`, `tb_cuidado_compartilhado`, `tb_encaminhamento`, `tb_guia_encaminhamento`, `tb_problema`, `tb_receita_medicamento`
