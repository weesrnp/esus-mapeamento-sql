# tb_arquivo_temporario

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_arquivo_temporario` | `bigint` | sim | PK |
| 2 | `dt_inicio_geracao` | `timestamp without time zone` | sim |  |
| 3 | `st_arquivo` | `character varying(50)` | sim |  |
| 4 | `ds_identificador` | `character varying(50)` | sim |  |
| 5 | `bl_arquivo` | `bytea` | não |  |
| 6 | `co_usuario` | `bigint` | sim | FK → tb_usuario |
| 7 | `ds_formato` | `character varying(50)` | sim |  |
