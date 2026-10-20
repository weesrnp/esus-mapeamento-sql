# tb_dim_vinculacao_equipes

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_vinculacao_equipes` | `bigint` | sim | PK |
| 2 | `co_dim_equipe_principal` | `bigint` | sim | FK → tb_dim_equipe |
| 3 | `co_dim_equipe_vinculada` | `bigint` | sim | FK → tb_dim_equipe |
