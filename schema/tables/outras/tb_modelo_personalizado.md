# tb_modelo_personalizado

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_modelo_personalizado` | `bigint` | sim | PK |
| 2 | `no_modelo` | `character varying(255)` | sim |  |
| 3 | `co_ator_papel_criador` | `bigint` | sim | FK → tb_ator_papel |
| 4 | `st_publico` | `integer` | sim |  |
| 5 | `tp_modulo` | `bigint` | sim |  |
| 6 | `ds_modelo_personalizado` | `json` | sim |  |
