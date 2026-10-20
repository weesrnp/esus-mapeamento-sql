# tl_cidadao_grupo_ativ_col

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cidadao_grupo` | `bigint` | sim | PK |
| 4 | `co_unico_cidadao_grupo` | `character varying(96)` | não |  |
| 5 | `no_cidadao_grupo` | `character varying(255)` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
| 7 | `dt_nascimento` | `date` | não |  |
| 8 | `co_sexo` | `integer` | não |  |
| 9 | `nu_cpf` | `character varying(11)` | não |  |
| 10 | `st_nao_possui_cpf` | `integer` | não |  |
| 11 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
