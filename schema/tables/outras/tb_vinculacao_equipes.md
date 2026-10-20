# tb_vinculacao_equipes

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_vinculacao_equipes` | `bigint` | sim | PK |
| 2 | `co_equipe_principal` | `bigint` | sim | FK → tb_equipe |
| 3 | `co_equipe_vinculada` | `bigint` | sim | FK → tb_equipe |
