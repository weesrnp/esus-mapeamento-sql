# tb_dente

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_parte_bucal` | `bigint` | sim | PK |
| 2 | `co_sextante` | `bigint` | não | FK → tb_sextante |
| 3 | `nu_dente` | `integer` | não |  |

Referenciada por: `tb_evolucao_dente`
