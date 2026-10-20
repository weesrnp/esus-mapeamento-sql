# tb_pergunta_detalhe

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_pergunta_detalhe` | `bigint` | sim | PK |
| 2 | `co_pergunta` | `bigint` | sim | FK → tb_pergunta |
| 3 | `ds_local` | `character varying(10)` | não |  |
| 4 | `ds_pergunta_detalhe` | `character varying(255)` | sim |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |

Referenciada por: `tb_cds_cidadao_resposta`, `tb_cds_domicilio_resposta`
