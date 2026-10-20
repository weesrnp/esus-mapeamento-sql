# tl_medicamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_medicamento` | `bigint` | sim | PK |
| 4 | `no_principio_ativo` | `character varying(400)` | não |  |
| 5 | `ds_concentracao` | `character varying(200)` | não |  |
| 6 | `co_forma_farmaceutica` | `bigint` | não |  |
| 7 | `ds_unidade_fornecimento` | `character varying(200)` | não |  |
