# tb_auditoria_processo

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_auditoria_processo` | `bigint` | sim | PK |
| 2 | `dt_inicio` | `date` | sim |  |
| 3 | `dt_fim` | `date` | sim |  |
| 4 | `dt_solicitacao` | `timestamp without time zone` | sim |  |
| 5 | `st_processo` | `character varying(100)` | sim |  |
| 6 | `im_impressao` | `bytea` | não |  |
| 7 | `co_usuario` | `bigint` | sim | FK → tb_usuario |
| 8 | `st_csv` | `integer` | não |  |
