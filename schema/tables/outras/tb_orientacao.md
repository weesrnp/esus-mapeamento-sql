# tb_orientacao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_orientacao` | `bigint` | sim | PK |
| 2 | `ds_orientacao` | `text` | sim |  |
| 4 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 5 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
