# tb_tipo_exame

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_exame` | `bigint` | sim | PK |
| 2 | `no_tipo_exame` | `character varying(50)` | sim |  |
| 3 | `co_sexo` | `bigint` | sim | FK → tb_sexo |
| 4 | `no_identificador` | `character varying(30)` | sim |  |
