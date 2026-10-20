# tb_sextante

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_parte_bucal` | `bigint` | sim | PK |
| 2 | `co_arcada` | `bigint` | não | FK → tb_arcada |

Referenciada por: `tb_dente`
