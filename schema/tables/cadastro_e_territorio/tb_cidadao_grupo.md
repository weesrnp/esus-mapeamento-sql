# tb_cidadao_grupo

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_grupo` | `bigint` | sim | PK |
| 2 | `nu_cns` | `character varying(16)` | não |  |
| 3 | `nu_uuid_ultima_ficha` | `character varying(96)` | não |  |
| 4 | `nu_uuid_origem` | `character varying(96)` | não |  |
| 5 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 6 | `co_cidadao_master` | `bigint` | sim | FK → tb_cidadao |
| 7 | `co_cidadao_unificado` | `bigint` | sim | FK → tb_cidadao |
| 8 | `dt_atualizacao` | `timestamp with time zone` | não |  |
| 9 | `nu_cpf` | `character varying(11)` | não |  |

Referenciada por: `tb_historico_unificacao`
