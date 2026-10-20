# ta_cfg_agenda_municipal

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacfgagendamunicipal` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cfg_agenda_municipal` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `nu_duracao_atendimento_padrao` | `integer` | não |  |
