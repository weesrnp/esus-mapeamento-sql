# ta_periograma_simplificado

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taperiogramasimplificad` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_periograma_simplificado` | `bigint` | não |  |
| 5 | `ds_sextante_1` | `character varying(2)` | não |  |
| 6 | `ds_sextante_2` | `character varying(2)` | não |  |
| 7 | `ds_sextante_3` | `character varying(2)` | não |  |
| 8 | `ds_sextante_4` | `character varying(2)` | não |  |
| 9 | `ds_sextante_5` | `character varying(2)` | não |  |
| 10 | `ds_sextante_6` | `character varying(2)` | não |  |
| 11 | `ds_observacao` | `character varying(400)` | não |  |
| 12 | `co_atend_odonto` | `bigint` | não |  |
| 13 | `co_prontuario` | `bigint` | não |  |
