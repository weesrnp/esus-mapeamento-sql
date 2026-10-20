# tb_parte_bucal_cid10

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_parte_bucal_cid10` | `bigint` | sim | PK |
| 2 | `co_parte_bucal` | `bigint` | sim | FK → tb_parte_bucal |
| 3 | `co_cid10` | `bigint` | sim | FK → tb_cid10 |
