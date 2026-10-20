# tb_ativ_col_observacao_cidadao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativ_col_obs_cidadao` | `bigint` | sim | PK |
| 2 | `co_atividade_coletiva` | `bigint` | sim | FK → tb_atividade_coletiva |
| 3 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 4 | `ds_observacao` | `text` | sim |  |
