# tb_cnes

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cnes` | `bigint` | sim | PK |
| 2 | `nu_versao` | `character varying(10)` | sim |  |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
