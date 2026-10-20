# tb_cds_cidadao_resposta

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_cidadao_resposta` | `bigint` | sim | PK |
| 2 | `co_pergunta` | `bigint` | sim | FK → tb_pergunta |
| 3 | `co_pergunta_detalhe` | `bigint` | não | FK → tb_pergunta_detalhe |
| 4 | `ds_resposta` | `character varying(255)` | não |  |
| 5 | `st_resposta` | `integer` | não |  |
| 6 | `co_cds_cad_individual` | `bigint` | não | FK → tb_cds_cad_individual |
