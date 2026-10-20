# ta_vacinacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tavacinacao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_vacinacao` | `bigint` | não |  |
| 5 | `st_gestante` | `integer` | não |  |
| 6 | `st_puerpera` | `integer` | não |  |
| 7 | `st_viajante` | `integer` | não |  |
| 8 | `st_comunicante_hanseniase` | `integer` | não |  |
| 9 | `co_atend_prof` | `bigint` | não |  |
| 10 | `co_prontuario` | `bigint` | não |  |
| 11 | `no_condicao_maternal` | `character varying(20)` | não |  |
