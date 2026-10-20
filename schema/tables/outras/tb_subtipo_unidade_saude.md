# tb_subtipo_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_subtp_unidade_saude` | `bigint` | sim | PK |
| 2 | `co_tp_unidade_saude` | `bigint` | sim | FK → tb_tipo_unidade_saude |
| 3 | `co_subtp_unidade_saude` | `character varying(3)` | não |  |
| 4 | `ds_subtp_unidade_saude` | `character varying(255)` | sim |  |

Referenciada por: `rl_tipo_servico_padrao`, `tb_unidade_saude`
