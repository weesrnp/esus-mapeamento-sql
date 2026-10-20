# tb_historico_unificacao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_historico_unificacao` | `bigint` | sim | PK |
| 2 | `dt_unificacao` | `timestamp with time zone` | não |  |
| 3 | `co_cidadao_grupo` | `bigint` | sim | FK → tb_cidadao_grupo |
| 4 | `co_prof` | `bigint` | não | FK → tb_prof |
