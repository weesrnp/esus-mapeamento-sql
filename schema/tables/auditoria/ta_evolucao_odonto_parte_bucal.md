# ta_evolucao_odonto_parte_bucal

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaoodontopartbcl` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_evolucao_odonto` | `bigint` | não |  |
| 5 | `co_parte_bucal` | `bigint` | não |  |
