# tl_cds_atend_odonto

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_atend_odonto` | `bigint` | sim | PK |
| 2 | `co_local_atend` | `bigint` | não |  |
| 3 | `co_cds_ficha_atend_odonto` | `bigint` | não |  |
| 4 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 5 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 6 | `nu_prontuario` | `character varying(255)` | não |  |
| 7 | `st_necessidade_especial` | `integer` | não |  |
| 8 | `st_gestante` | `integer` | não |  |
| 9 | `co_revisao` | `bigint` | sim | PK |
| 10 | `co_tipo_revisao` | `integer` | não |  |
| 11 | `co_sexo` | `bigint` | não |  |
| 12 | `tp_atend` | `bigint` | não |  |
| 13 | `co_cds_turno` | `bigint` | não |  |
| 14 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 15 | `st_nasf` | `integer` | não |  |
| 16 | `st_nao_possui_cpf` | `integer` | não |  |
| 17 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
