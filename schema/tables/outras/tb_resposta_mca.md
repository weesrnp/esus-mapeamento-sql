# tb_resposta_mca

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_resposta_mca` | `bigint` | sim | PK |
| 2 | `co_marcador_consumo_alimentar` | `bigint` | sim | FK → tb_marcador_consumo_alimentar |
| 3 | `co_pergunta_mca` | `bigint` | sim | FK → tb_qst_pergunta |

Referenciada por: `rl_respostamca_opcaomca`
