# tb_agenda_fixada_ator_papel

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ag_fixada_ator_papel` | `bigint` | sim | PK |
| 2 | `co_ator_papel_fixador` | `bigint` | não | FK → tb_ator_papel |
| 3 | `co_config_agenda_fixada` | `bigint` | não | FK → tb_cfg_agenda |
