# tb_territorio_domicilio_erro

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_territorio_dom_erro` | `bigint` | sim | PK |
| 2 | `co_domicilio` | `bigint` | sim | FK → tb_cds_domicilio |
| 3 | `ds_origem` | `character varying(64)` | sim |  |
| 4 | `ds_mensagem_erro` | `text` | sim |  |
