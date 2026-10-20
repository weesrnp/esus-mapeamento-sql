# tb_regulacao

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_regulacao` | `bigint` | sim | PK |
| 2 | `co_unico_regulacao` | `character varying(36)` | sim |  |
| 3 | `no_tipo_regulacao` | `character varying(255)` | sim |  |
| 4 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 5 | `co_guia_encaminhamento` | `bigint` | não | FK → tb_guia_encaminhamento |
| 6 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 7 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 8 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 9 | `co_ultima_evolucao` | `bigint` | não | FK → tb_regulacao_evolucao |

Referenciada por: `tb_regulacao_evolucao`
