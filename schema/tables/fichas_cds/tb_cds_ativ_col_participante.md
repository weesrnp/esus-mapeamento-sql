# tb_cds_ativ_col_participante

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ativ_col_participnt` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_ativ_col` | `bigint` | sim | FK → tb_cds_ficha_ativ_col |
| 3 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 4 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 5 | `st_avaliacao_alterada` | `integer` | não |  |
| 6 | `st_cessou_habito_fumar` | `integer` | não |  |
| 7 | `st_abandonou_grupo` | `integer` | não |  |
| 8 | `nu_peso` | `double precision` | não |  |
| 9 | `nu_altura` | `double precision` | não |  |
| 10 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 11 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 12 | `st_nao_possui_cpf` | `integer` | não |  |
| 13 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
