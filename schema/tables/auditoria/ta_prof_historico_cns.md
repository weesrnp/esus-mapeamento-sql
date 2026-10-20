# ta_prof_historico_cns

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprofhistoricocns` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_prof_historico_cns` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
