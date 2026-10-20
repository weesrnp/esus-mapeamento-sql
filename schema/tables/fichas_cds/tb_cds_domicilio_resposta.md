# tb_cds_domicilio_resposta

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_domicilio_resposta` | `bigint` | sim | PK |
| 2 | `co_cds_cad_domiciliar` | `bigint` | sim | FK → tb_cds_cad_domiciliar |
| 3 | `co_pergunta` | `bigint` | sim | FK → tb_pergunta |
| 4 | `co_pergunta_detalhe` | `bigint` | não | FK → tb_pergunta_detalhe |
| 5 | `ds_resposta` | `character varying(255)` | não |  |
| 6 | `st_resposta` | `integer` | não |  |
