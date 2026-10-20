# tl_prof_grupo_ativ_col

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_prof_grupo` | `bigint` | sim | PK |
| 4 | `no_prof_grupo` | `character varying(255)` | não |  |
| 5 | `nu_cpf` | `character varying(11)` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
| 7 | `nu_cnes` | `character varying(20)` | não |  |
| 8 | `nu_ine` | `character varying(255)` | não |  |
| 9 | `co_cbo_2002` | `character varying(10)` | não |  |
| 10 | `co_unico_prof` | `character varying(40)` | não |  |
