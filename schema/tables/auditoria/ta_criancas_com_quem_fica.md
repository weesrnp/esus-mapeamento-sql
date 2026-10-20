# ta_criancas_com_quem_fica

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacriancascomquemfica` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_info_sociodemograficas` | `bigint` | não |  |
| 5 | `co_criancas_com_quem_fica` | `bigint` | não |  |
