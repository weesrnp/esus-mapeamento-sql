# tb_lembrete_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lembrete_evolucao` | `bigint` | sim | PK |
| 2 | `ds_lembrete` | `text` | não |  |
| 3 | `st_ativo` | `integer` | não |  |
| 4 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 5 | `dt_prontuario_lembrete` | `timestamp without time zone` | não |  |
| 6 | `co_visibilidade_lembrete` | `bigint` | não | FK → tb_visibilidade_lembrete |
| 7 | `co_lembrete` | `bigint` | não | FK → tb_lembrete |

Referenciada por: `tb_lembrete`
