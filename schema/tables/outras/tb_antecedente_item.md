# tb_antecedente_item

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_antecedente_item` | `bigint` | sim | PK |
| 2 | `co_antecedente_historico` | `bigint` | não | FK → tb_antecedente_historico |
| 3 | `ds_valor_item` | `character varying(4000)` | não |  |
| 5 | `tp_antecedente_item` | `bigint` | não | FK → tb_antecedente_tipo_item |
