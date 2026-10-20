# rl_credencial_integ_recurso

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_credencl_integ_recurso` | `bigint` | sim | PK |
| 2 | `co_credencial_integracao` | `bigint` | sim | FK → tb_credencial_integracao |
| 3 | `co_recurso` | `bigint` | sim | FK → tb_recurso_credencial_integ |
