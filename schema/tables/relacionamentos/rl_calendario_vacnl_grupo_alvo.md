# rl_calendario_vacnl_grupo_alvo

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_calendario_vacnl_grupo_alvo` | `bigint` | sim | PK |
| 2 | `co_calendario_vacinal` | `bigint` | não | FK → tb_calendario_vacinal |
| 3 | `co_grupo_alvo_vacinacao` | `bigint` | não | FK → tb_grupo_alvo_vacinacao |
| 4 | `co_faixa_etaria_vacinacao` | `bigint` | não | FK → tb_faixa_etaria_vacinacao |
| 5 | `ds_faixa_etaria` | `character varying(255)` | não |  |
| 6 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 7 | `st_mostrar_calendario_grupo` | `integer` | sim |  |
