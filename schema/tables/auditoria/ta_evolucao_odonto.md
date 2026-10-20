# ta_evolucao_odonto

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaoodonto` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_evolucao_odonto` | `bigint` | não |  |
| 5 | `tp_parte_bucal` | `bigint` | não |  |
| 6 | `ds_parte_bucal` | `character varying(255)` | não |  |
| 7 | `ds_outro` | `character varying(400)` | não |  |
| 8 | `co_atend_prof_odonto` | `bigint` | não |  |
| 9 | `co_prontuario` | `bigint` | não |  |
| 10 | `ds_evolucao` | `text` | não |  |
| 11 | `ds_parte_bucal_filtro` | `character varying(255)` | não |  |
