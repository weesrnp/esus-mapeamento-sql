# ta_agend_compartilhado

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taagendcompartilhado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_agend_compartilhado` | `bigint` | não |  |
| 5 | `co_agend_principal` | `bigint` | não |  |
| 6 | `co_agend_participante` | `bigint` | não |  |
| 7 | `no_prof_participante` | `character varying(255)` | não |  |
| 8 | `ds_email_prof_participante` | `character varying(50)` | não |  |
| 9 | `nu_telefone_prof_participante` | `character varying(20)` | não |  |
| 10 | `co_videochamada` | `bigint` | não |  |
| 11 | `no_estab_saude_prof_externo` | `character varying(255)` | não |  |
