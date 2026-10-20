# rl_historico_cabecalho

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ficha_origem_concatenacao` | `bigint` | sim | FK → tb_historico_cabecalho |
| 2 | `co_ficha_concatenada` | `bigint` | sim | PK |
