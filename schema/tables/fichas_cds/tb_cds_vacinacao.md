# tb_cds_vacinacao

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_vacinacao` | `bigint` | sim | PK |
| 2 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 3 | `nu_prontuario` | `character varying(255)` | não |  |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 6 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 7 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 8 | `st_viajante` | `integer` | não |  |
| 9 | `st_comunicante_hanseniase` | `integer` | não |  |
| 12 | `co_cds_ficha_vacinacao` | `bigint` | não | FK → tb_cds_ficha_vacinacao |
| 13 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 14 | `co_condicao_maternal` | `bigint` | não |  |
| 15 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
| 16 | `st_nao_possui_cpf` | `integer` | não |  |

Referenciada por: `tb_cds_vacina`
