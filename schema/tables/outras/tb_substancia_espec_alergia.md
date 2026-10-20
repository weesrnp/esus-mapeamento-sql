# tb_substancia_espec_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_substanc_espec_alergia` | `bigint` | sim | PK |
| 2 | `co_categoria` | `bigint` | sim | FK → tb_categ_substancia_alergia |
| 3 | `co_substancia` | `bigint` | não | FK → tb_substancia_cbara |
| 4 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 5 | `co_medicamento_catmat` | `bigint` | não | FK → tb_medicamento_catmat |

Referenciada por: `tb_alergia`
