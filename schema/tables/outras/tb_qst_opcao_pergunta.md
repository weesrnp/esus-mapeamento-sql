# tb_qst_opcao_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_opcao_pergunta` | `bigint` | sim | PK |
| 2 | `co_qst_pergunta` | `bigint` | não | FK → tb_qst_pergunta |
| 3 | `co_qst_opcao_tipo_pergunta` | `bigint` | não | FK → tb_qst_opcao_tipo_pergunta |
| 4 | `co_qst_orientacao_prof` | `bigint` | não | FK → tb_qst_orientacao_prof |

Referenciada por: `rl_qst_associacao_opcao_pergnt`, `rl_qst_resposta_opcao_pergunta`, `tb_qst_associacao_pergunta`, `tb_qst_resposta`
