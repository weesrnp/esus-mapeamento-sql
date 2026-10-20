# ta_antecedente_ciap

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taantecedenteciap` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_prontuario` | `bigint` | não |  |
| 5 | `co_ciap` | `bigint` | não |  |
| 6 | `ds_observacao` | `character varying(400)` | não |  |
| 7 | `co_seq` | `bigint` | não |  |
| 8 | `co_cid10` | `bigint` | não |  |
