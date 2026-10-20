# ta_cfg_agenda

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacfgagenda` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_config_agenda` | `bigint` | não |  |
| 5 | `co_entidade_configurada` | `bigint` | não |  |
| 6 | `co_tipo_cfg_agenda` | `bigint` | não |  |
