# rl_tipo_servico_padrao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_rl_tipo_servico_padrao` | `bigint` | sim | PK |
| 2 | `co_tp_servico` | `bigint` | sim | FK → tb_tipo_servico |
| 3 | `co_subtp_unidade_saude` | `bigint` | não | FK → tb_subtipo_unidade_saude |
