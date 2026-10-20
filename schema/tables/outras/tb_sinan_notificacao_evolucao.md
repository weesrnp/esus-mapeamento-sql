# tb_sinan_notificacao_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sinan_notificacao_evol` | `bigint` | sim | PK |
| 2 | `co_sinan_notificacao` | `bigint` | sim | FK → tb_sinan_notificacao |
| 3 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 4 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
