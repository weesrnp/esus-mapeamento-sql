# ta_tecido_mole

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tatecidomole` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_tecido_mole` | `bigint` | não |  |
| 5 | `co_atend_prof_odonto` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_parte_bucal` | `bigint` | não |  |
| 8 | `co_cid10` | `bigint` | não |  |
| 9 | `ds_outro_sintomatologia` | `character varying(100)` | não |  |
| 10 | `co_evolucao_odonto` | `bigint` | não |  |
