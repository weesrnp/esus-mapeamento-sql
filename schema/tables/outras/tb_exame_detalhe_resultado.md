# tb_exame_detalhe_resultado

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_detalhe_resultado` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 3 | `co_proced_exame_detalhe` | `bigint` | não | FK → rl_proced_exame_detalhe |
| 4 | `tp_resultado` | `bigint` | não | FK → tb_tipo_opcao |
| 5 | `nu_resultado` | `double precision` | não |  |
| 6 | `ds_resultado` | `character varying(800)` | não |  |
