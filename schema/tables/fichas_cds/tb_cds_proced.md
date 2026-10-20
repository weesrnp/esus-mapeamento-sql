# tb_cds_proced

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_proced` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_proced` | `bigint` | sim | FK → tb_cds_ficha_proced |
| 3 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 4 | `nu_prontuario` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp without time zone` | sim |  |
| 6 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 7 | `st_escuta_inicial` | `integer` | não |  |
| 8 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 9 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 10 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 11 | `st_nao_possui_cpf` | `integer` | não |  |
| 12 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_proced_cds_proced`
