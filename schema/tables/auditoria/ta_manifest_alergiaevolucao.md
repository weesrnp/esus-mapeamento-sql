# ta_manifest_alergiaevolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamanifestalergiaevoluc` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_alergia_evolucao` | `bigint` | não |  |
| 5 | `co_manifestacao_alergia` | `bigint` | não |  |
