# tb_assinatura_eletronica_atend

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_assinatura_eletro_atend` | `bigint` | sim | PK |
| 2 | `bl_arquivo_assinado` | `bytea` | não |  |
| 3 | `dt_assinatura` | `timestamp with time zone` | sim |  |
| 4 | `st_assinatura` | `bigint` | sim | FK → tb_status_assinatura |
| 6 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
