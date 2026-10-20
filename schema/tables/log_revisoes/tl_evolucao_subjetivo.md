# tl_evolucao_subjetivo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atend_prof` | `bigint` | sim | PK |
| 4 | `ds_subjetivo` | `text` | não |  |
| 5 | `ds_acompanhado_especialidade` | `character varying(255)` | não |  |
