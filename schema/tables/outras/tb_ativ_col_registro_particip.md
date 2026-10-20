# tb_ativ_col_registro_particip

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_registro_participante` | `bigint` | sim | PK |
| 2 | `co_atividade_coletiva` | `bigint` | sim | FK → tb_atividade_coletiva |
| 3 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 4 | `co_cidadao_participante` | `bigint` | não | FK → tb_ativ_col_cidadao_particip |
| 5 | `nu_peso` | `double precision` | não |  |
| 6 | `nu_altura` | `double precision` | não |  |
| 7 | `st_avaliacao_alterada` | `integer` | não |  |
| 8 | `st_cessou_habito_fumar` | `integer` | não |  |
| 9 | `st_abandonou_grupo` | `integer` | não |  |
