# tb_tipo_opcao

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_opcao` | `bigint` | sim | PK |
| 2 | `no_tipo_opcao` | `character varying(25)` | sim |  |
| 3 | `no_identificador` | `character varying(25)` | sim |  |

Referenciada por: `tb_exame_detalhe`, `tb_exame_detalhe_resultado`, `tb_qst_pergunta`
