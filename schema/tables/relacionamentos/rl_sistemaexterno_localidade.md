# rl_sistemaexterno_localidade

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sistemaexterno_local` | `bigint` | sim | PK |
| 2 | `co_sistema_externo` | `bigint` | sim | FK → tb_sistema_externo |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
