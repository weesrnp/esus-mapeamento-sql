# tb_sala_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sala_unidade_saude` | `bigint` | sim | PK |
| 2 | `no_sala` | `character varying(50)` | sim |  |
| 3 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 4 | `st_ativo` | `integer` | sim |  |

Referenciada por: `tb_chamada_painel`
