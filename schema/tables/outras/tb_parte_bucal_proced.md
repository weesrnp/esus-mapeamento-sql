# tb_parte_bucal_proced

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_parte_bucal_proced` | `bigint` | sim | PK |
| 2 | `co_proced` | `bigint` | sim | FK → tb_proced |
| 3 | `tp_parte_bucal` | `bigint` | sim | FK → tb_tipo_parte_bucal |
| 4 | `nu_dente` | `integer` | não |  |
| 5 | `co_parte_bucal` | `bigint` | sim | FK → tb_parte_bucal |
