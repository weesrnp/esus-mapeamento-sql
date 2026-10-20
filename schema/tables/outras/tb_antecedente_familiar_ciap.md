# tb_antecedente_familiar_ciap

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_prontuario` | `bigint` | sim | FK → tb_antecedente |
| 2 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 3 | `ds_observacao` | `character varying(400)` | não |  |
| 4 | `co_seq` | `bigint` | sim | PK |
| 5 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
