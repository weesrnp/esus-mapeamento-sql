# tb_marcador_consumo_alimentar

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_marcador_consumo_alim` | `bigint` | sim | PK |
| 2 | `co_qst_questionario` | `bigint` | sim | FK → tb_qst_questionario |

Referenciada por: `tb_atend_prof`, `tb_resposta_mca`
