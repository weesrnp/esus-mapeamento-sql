# tb_qst_questionario_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_questionario_pergunta` | `bigint` | sim | PK |
| 2 | `ds_ordenacao` | `character varying(15)` | não |  |
| 3 | `co_qst_questionario` | `bigint` | não | FK → tb_qst_questionario |
| 4 | `co_qst_pergunta` | `bigint` | não | FK → tb_qst_pergunta |
| 5 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_qst_associacao_pergunta`, `tb_qst_resposta`
