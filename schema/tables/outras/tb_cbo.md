# tb_cbo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cbo` | `bigint` | sim | PK |
| 2 | `no_cbo` | `character varying(255)` | sim |  |
| 3 | `no_cbo_filtro` | `character varying(255)` | sim |  |
| 4 | `co_cbo_2002` | `character varying(10)` | sim |  |
| 5 | `st_disponivel_lotacao` | `integer` | não |  |

Referenciada por: `rl_perfil_cbo_padrao`, `rl_proced_cbo`, `tb_cbo_atend`, `tb_cds_cad_individual`, `tb_cds_vacina`, `tb_cidadao`, `tb_cuidado_compartilhado`, `tb_cuidado_compartilhado_evol`, `tb_especialidade_sisreg`, `tb_estagio`, `tb_guia_encaminhamento`, `tb_lotacao`, `tb_lotacao_env_unificacao_base`, `tb_registro_vacinacao`
