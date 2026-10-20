# tl_opcao_rapida_exame

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_opcao_rapida_exame` | `bigint` | sim | PK |
| 4 | `no_opcao_rapida_exame` | `character varying(255)` | não |  |
| 5 | `co_sexo` | `bigint` | não |  |
| 6 | `nu_idade_minima` | `integer` | não |  |
| 7 | `nu_idade_maxima` | `integer` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
