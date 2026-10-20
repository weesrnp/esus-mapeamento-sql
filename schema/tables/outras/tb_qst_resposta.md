# tb_qst_resposta

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_qst_resposta` | `bigint` | sim | PK |
| 2 | `co_qst_questionario_respondido` | `bigint` | não | FK → tb_qst_questionario_respondido |
| 3 | `co_qst_questionario_pergunta` | `bigint` | não | FK → tb_qst_questionario_pergunta |
| 4 | `tp_qst_resposta` | `integer` | não | FK → tb_qst_tipo_resposta |
| 5 | `nu_resposta` | `integer` | não |  |
| 6 | `ds_resposta` | `character varying(800)` | não |  |
| 7 | `co_qst_opcao_pergunta` | `bigint` | não | FK → tb_qst_opcao_pergunta |

Referenciada por: `rl_qst_resposta_opcao_pergunta`
