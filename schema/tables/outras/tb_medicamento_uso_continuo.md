# tb_medicamento_uso_continuo

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_medicament_uso_continuo` | `bigint` | sim | PK |
| 2 | `co_medicamento` | `bigint` | não | FK → tb_medicamento |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `co_ultima_receita_medicamento` | `bigint` | não | FK → tb_receita_medicamento |
