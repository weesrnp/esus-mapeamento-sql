# tb_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_pergunta` | `bigint` | sim | PK |
| 2 | `ds_local` | `character varying(10)` | não |  |
| 3 | `ds_pergunta` | `character varying(255)` | sim |  |
| 4 | `co_pergunta_pai` | `bigint` | não | FK → tb_pergunta |
| 5 | `co_contexto_pergunta` | `bigint` | sim | FK → tb_contexto_pergunta |
| 6 | `tp_pergunta` | `bigint` | sim | FK → tb_tipo_pergunta |

Referenciada por: `tb_cds_cidadao_resposta`, `tb_cds_domicilio_resposta`, `tb_pergunta`, `tb_pergunta_detalhe`
