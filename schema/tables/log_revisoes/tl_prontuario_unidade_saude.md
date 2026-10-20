# tl_prontuario_unidade_saude

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_prontuario_unidade_saud` | `bigint` | sim | PK |
| 4 | `co_unidade_saude` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `nu_prontuario` | `character varying(30)` | não |  |
