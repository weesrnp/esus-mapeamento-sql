# tb_lotacao_env_unificacao_base

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lot_env_unif_base` | `bigint` | sim | PK |
| 2 | `nu_cpf_prof` | `character varying(11)` | sim |  |
| 3 | `co_ativ_col_unificacao_base` | `bigint` | sim | FK → tb_ativ_col_unificacao_base |
| 4 | `co_cbo` | `bigint` | sim | FK → tb_cbo |
| 5 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 6 | `nu_ine` | `character varying(20)` | não |  |
| 7 | `st_importado` | `integer` | sim |  |
