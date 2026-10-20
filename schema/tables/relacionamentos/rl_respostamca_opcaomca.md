# rl_respostamca_opcaomca

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_respostamca_opcaomca` | `bigint` | sim | PK |
| 2 | `co_resposta_mca` | `bigint` | sim | FK → tb_resposta_mca |
| 3 | `co_opcao_mca` | `bigint` | sim | FK → tb_qst_opcao_tipo_pergunta |
