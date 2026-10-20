# ta_sistemaexterno_perfil

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasistemaexternoperfil` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_sistemaexterno_perfil` | `bigint` | não |  |
| 5 | `co_sistema_externo` | `bigint` | não |  |
| 6 | `co_perfil` | `bigint` | não |  |
