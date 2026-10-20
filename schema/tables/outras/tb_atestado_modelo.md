# tb_atestado_modelo

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atestado_modelo` | `bigint` | sim | PK |
| 2 | `no_modelo` | `character varying(45)` | sim |  |
| 3 | `ds_modelo` | `text` | não |  |
| 4 | `co_prof` | `bigint` | sim | FK → tb_prof |
