# tb_equipe_unificacao_base

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_equipe_unificacao_base` | `bigint` | sim | PK |
| 2 | `nu_ine` | `character varying(20)` | não |  |
| 3 | `nu_cnes` | `character varying(20)` | não |  |
| 4 | `st_criado_unificacao` | `integer` | não |  |
| 5 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
