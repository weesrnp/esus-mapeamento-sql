# tb_gestor_estadual

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ator_papel` | `bigint` | sim | PK |
| 2 | `co_uf` | `bigint` | sim | FK → tb_uf |
