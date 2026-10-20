# tb_regulacao_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_regulacao_evolucao` | `bigint` | sim | PK |
| 2 | `co_regulacao` | `bigint` | sim | FK → tb_regulacao |
| 3 | `dt_evolucao_regulacao` | `timestamp without time zone` | sim |  |
| 4 | `no_status` | `character varying(255)` | sim |  |
| 5 | `no_prioridade` | `character varying(255)` | sim |  |
| 6 | `ds_observacao` | `character varying(2000)` | não |  |
| 7 | `co_credencial_integracao` | `bigint` | não | FK → tb_credencial_integracao |

Referenciada por: `tb_regulacao`
