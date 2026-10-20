# rl_lote_credencial_integracao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_credencial_integrc` | `bigint` | sim | PK |
| 2 | `co_recebimento_lote` | `bigint` | sim | FK → tb_recebimento_lote |
| 3 | `co_credencial_integracao` | `bigint` | sim | FK → tb_credencial_integracao |
