# tb_resultado_exm_qualitativo

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_resultado_exm_qltativo` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | sim | FK → tb_exame_requisitado |
| 3 | `co_resultado_exame` | `bigint` | sim | FK → tb_opcoes_result_exm_qlitativo |
