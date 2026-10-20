# ta_evolucao_subjetivo

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaosubjetivo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `ds_subjetivo` | `text` | não |  |
| 6 | `ds_acompanhado_especialidade` | `character varying(255)` | não |  |
