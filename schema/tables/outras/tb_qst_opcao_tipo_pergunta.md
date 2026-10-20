# tb_qst_opcao_tipo_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_opcao_tipo_pergunta` | `bigint` | sim | PK |
| 2 | `no_qst_opcao_tipo_pergunta` | `character varying(255)` | não |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `rl_respostamca_opcaomca`, `tb_qst_opcao_pergunta`
