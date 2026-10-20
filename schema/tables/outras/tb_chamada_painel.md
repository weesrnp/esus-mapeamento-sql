# tb_chamada_painel

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_chamada_painel` | `bigint` | sim | PK |
| 2 | `co_atend` | `bigint` | sim | FK → tb_atend |
| 3 | `co_ator_papel_chamada` | `bigint` | sim | FK → tb_ator_papel |
| 4 | `tp_atendimento` | `character varying(20)` | sim |  |
| 5 | `dt_chamada` | `timestamp without time zone` | sim |  |
| 6 | `co_sala_unidade_saude` | `bigint` | sim | FK → tb_sala_unidade_saude |
