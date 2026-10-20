# tb_antecedente_historico

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_antecedente_historico` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |

Referenciada por: `tb_antecedente_item`
