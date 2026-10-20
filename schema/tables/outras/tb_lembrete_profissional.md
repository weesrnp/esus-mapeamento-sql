# tb_lembrete_profissional

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lembrete_profissional` | `bigint` | sim | PK |
| 2 | `co_usuario` | `bigint` | não | FK → tb_usuario |
| 3 | `co_ator_papel` | `bigint` | não | FK → tb_ator_papel |
| 4 | `st_visualizado` | `integer` | sim |  |
| 5 | `dt_exibir_novamente` | `timestamp without time zone` | não |  |
| 6 | `dt_visualizado` | `timestamp without time zone` | não |  |
| 7 | `ds_lembrete` | `character varying(50)` | sim |  |
