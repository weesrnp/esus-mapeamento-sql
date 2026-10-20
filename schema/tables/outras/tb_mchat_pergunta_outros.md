# tb_mchat_pergunta_outros

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_mchatperguntaoutros` | `bigint` | sim | PK |
| 2 | `ds_outros` | `character varying(150)` | sim |  |
| 3 | `co_mchat_aplicacao` | `bigint` | sim | FK → tb_mchat_aplicacao |
