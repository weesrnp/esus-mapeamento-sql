# tb_qst_associacao_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_associacao_pergunta` | `bigint` | sim | PK |
| 2 | `co_qst_questionario_pergunta` | `bigint` | não | FK → tb_qst_questionario_pergunta |
| 3 | `co_qst_qst_pergunta_associacao` | `bigint` | não | FK → tb_qst_questionario_pergunta |
| 4 | `co_opcao_pergunta` | `bigint` | não | FK → tb_qst_opcao_pergunta |

Referenciada por: `rl_qst_associacao_opcao_pergnt`
