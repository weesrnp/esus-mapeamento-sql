# tb_vinculacao_servico

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_vinculacao_servico` | `bigint` | sim | PK |
| 2 | `co_estabelecimento_referencia` | `bigint` | sim | FK → tb_unidade_saude |
| 3 | `co_estabelecimento_vinculado` | `bigint` | sim | FK → tb_unidade_saude |
| 4 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
