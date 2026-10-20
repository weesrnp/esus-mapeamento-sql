# tb_config_painel_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_painel_uni_saude` | `bigint` | sim | PK |
| 2 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 3 | `st_habilitado` | `integer` | sim |  |
