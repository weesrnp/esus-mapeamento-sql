# tb_cidadao_grupo_ativ_col

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_grupo` | `bigint` | sim | PK |
| 2 | `co_unico_cidadao_grupo` | `character varying(96)` | sim |  |
| 3 | `no_cidadao_grupo` | `character varying(255)` | não |  |
| 4 | `nu_cns` | `character varying(16)` | não |  |
| 5 | `dt_nascimento` | `date` | não |  |
| 6 | `co_sexo` | `integer` | não |  |
| 7 | `nu_cpf` | `character varying(11)` | não |  |
| 8 | `st_nao_possui_cpf` | `integer` | não |  |
| 9 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_grupo_ativ_col_cidadao`
