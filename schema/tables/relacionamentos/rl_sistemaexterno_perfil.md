# rl_sistemaexterno_perfil

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sistemaexterno_perfil` | `bigint` | sim | PK |
| 2 | `co_sistema_externo` | `bigint` | sim | FK → tb_sistema_externo |
| 3 | `co_perfil` | `bigint` | sim | FK → tb_perfil |
