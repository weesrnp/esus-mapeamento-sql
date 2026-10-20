# tl_cds_ativ_col_participante

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ativ_col_participnt` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_ativ_col` | `bigint` | não |  |
| 3 | `nu_cartao_sus` | `character varying(225)` | não |  |
| 4 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 5 | `st_avaliacao_alterada` | `integer` | não |  |
| 6 | `nu_peso` | `double precision` | não |  |
| 7 | `nu_altura` | `double precision` | não |  |
| 8 | `co_revisao` | `bigint` | sim | PK |
| 9 | `co_tipo_revisao` | `integer` | não |  |
| 10 | `st_cessou_habito_fumar` | `integer` | não |  |
| 11 | `st_abandonou_grupo` | `integer` | não |  |
| 12 | `co_sexo` | `bigint` | não |  |
| 13 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 14 | `st_nao_possui_cpf` | `integer` | não |  |
| 15 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
