# tb_qst_questionario_respondido

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_qst_qst_respondido` | `bigint` | sim | PK |
| 2 | `co_qst_questionario` | `bigint` | não | FK → tb_qst_questionario |
| 3 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 4 | `dt_respondido` | `timestamp with time zone` | não |  |

Referenciada por: `tb_cds_ficha_consumo_alimentar`, `tb_qst_resposta`
