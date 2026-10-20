# tl_evolucao_odonto

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_evolucao_odonto` | `bigint` | sim | PK |
| 4 | `tp_parte_bucal` | `bigint` | não |  |
| 5 | `ds_parte_bucal` | `character varying(255)` | não |  |
| 6 | `ds_outro` | `character varying(400)` | não |  |
| 7 | `co_atend_prof_odonto` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `ds_evolucao` | `text` | não |  |
