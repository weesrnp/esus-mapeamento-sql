# tb_ivcf_aplicacao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ivcfaplicacao` | `bigint` | sim | PK |
| 2 | `co_ivcf` | `bigint` | sim | FK → tb_ivcf |
| 3 | `co_pergunta` | `bigint` | sim | FK → tb_ivcf_perguntas |
| 4 | `st_resposta` | `integer` | não |  |
