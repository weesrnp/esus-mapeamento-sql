# rl_arquivo_atendprof

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_arquivo_atendprof` | `bigint` | sim | PK |
| 2 | `co_arquivo` | `bigint` | sim | FK → tb_arquivo |
| 3 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 4 | `co_categoria` | `bigint` | sim | FK → tb_categoria_arquivo_atendprof |
| 5 | `no_titulo` | `character varying(80)` | sim |  |
| 6 | `ds_observacao` | `character varying(200)` | não |  |

Referenciada por: `tb_exame_requisitado`
