# tb_unidade_saude_unif_base

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_unidade_saude_unif_base` | `bigint` | sim | PK |
| 2 | `nu_cnes` | `character varying(20)` | não |  |
| 3 | `st_criado_unificacao` | `integer` | não |  |
| 4 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
