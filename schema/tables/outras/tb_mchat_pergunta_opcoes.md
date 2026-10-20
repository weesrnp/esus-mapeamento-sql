# tb_mchat_pergunta_opcoes

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_mchatperguntaopcoes` | `bigint` | sim | PK |
| 2 | `ds_opcao_enum` | `character varying(100)` | sim |  |
| 3 | `co_mchat_aplicacao` | `bigint` | sim | FK → tb_mchat_aplicacao |
