# tb_errata_nota_complementar

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_errata_nota_complementr` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 4 | `dt_data` | `timestamp without time zone` | sim |  |
| 5 | `ds_justificativa` | `character varying(100)` | sim |  |
| 6 | `ds_errata_nota_complementar` | `character varying(1000)` | sim |  |
