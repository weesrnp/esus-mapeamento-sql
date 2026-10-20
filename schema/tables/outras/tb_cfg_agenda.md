# tb_cfg_agenda

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_agenda` | `bigint` | sim | PK |
| 2 | `co_entidade_configurada` | `bigint` | sim |  |
| 3 | `co_tipo_cfg_agenda` | `bigint` | sim |  |

Referenciada por: `tb_agenda_fixada_ator_papel`, `tb_cfg_agenda_detalhe`
