# tb_ator_papel

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ator_papel` | `bigint` | sim | PK |
| 4 | `no_tipo_ator_papel` | `character varying(100)` | não |  |
| 6 | `co_prof` | `bigint` | não | FK → tb_prof |
| 7 | `ds_modulo_inicial` | `character varying(255)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |

Referenciada por: `rl_ator_papel_perfil`, `tb_adm_geral`, `tb_adm_municipal`, `tb_agenda_fixada_ator_papel`, `tb_agendado`, `tb_atend`, `tb_chamada_painel`, `tb_cidadao_vinculacao_equipe`, `tb_dado_rel_processamento`, `tb_dispositivo_painel`, `tb_estagio`, `tb_gestor_estadual`, `tb_gestor_municipal`, `tb_justificativa_agenda`, `tb_justificativa_prontuario`, `tb_lembrete_profissional`, `tb_modelo_personalizado`
