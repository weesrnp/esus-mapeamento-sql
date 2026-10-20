# tb_ativ_col_cidadao_particip

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_participante` | `bigint` | sim | PK |
| 2 | `no_nome` | `character varying(255)` | não |  |
| 3 | `dt_nascimento` | `date` | não |  |
| 4 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 5 | `nu_cpf` | `character varying(11)` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
| 7 | `st_nao_possui_cpf` | `integer` | não |  |
| 8 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `tb_ativ_col_registro_particip`
