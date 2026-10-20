# tb_qst_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_pergunta` | `bigint` | sim | PK |
| 2 | `no_qst_pergunta` | `character varying(800)` | não |  |
| 3 | `tp_opcao_pergunta` | `bigint` | não | FK → tb_tipo_opcao |

Referenciada por: `tb_qst_opcao_pergunta`, `tb_qst_questionario_pergunta`, `tb_resposta_mca`
