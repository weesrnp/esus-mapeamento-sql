# tb_cidadao_aldeado

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_aldeado` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 3 | `co_aldeia_nascimento` | `bigint` | não | FK → tb_aldeia |
| 4 | `co_funcao_social` | `bigint` | não | FK → tb_funcao_social |
| 5 | `co_local_ocorrencia` | `bigint` | não | FK → tb_local_ocorrencia |
| 6 | `no_tradicional` | `character varying(70)` | não |  |
| 7 | `no_responsavel_legal` | `character varying(70)` | não |  |
| 8 | `st_chefe_familia` | `integer` | sim |  |
| 9 | `co_uf_nascimento` | `bigint` | não | FK → tb_uf |
| 10 | `no_unidade_funai` | `character varying(40)` | não |  |
| 11 | `nu_livro` | `integer` | não |  |
| 12 | `nu_folha` | `integer` | não |  |
| 13 | `nu_cadastro_unico` | `character varying(20)` | não |  |
| 14 | `dt_emissao` | `date` | não |  |
| 15 | `dt_reconhecimento` | `date` | sim |  |
| 16 | `dt_ausencia` | `date` | não |  |
| 17 | `dt_retorno` | `date` | não |  |

Referenciada por: `rl_beneficio_cidadao_aldeado`
