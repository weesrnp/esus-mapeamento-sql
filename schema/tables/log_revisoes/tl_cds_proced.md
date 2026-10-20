# tl_cds_proced

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_ficha_proced` | `bigint` | não |  |
| 2 | `co_local_atend` | `bigint` | não |  |
| 3 | `co_seq_cds_proced` | `bigint` | sim | PK |
| 4 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 5 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 6 | `nu_prontuario` | `character varying(255)` | não |  |
| 7 | `st_escuta_inicial` | `integer` | não |  |
| 8 | `co_revisao` | `bigint` | sim | PK |
| 9 | `co_tipo_revisao` | `integer` | não |  |
| 10 | `co_sexo` | `bigint` | não |  |
| 11 | `co_cds_turno` | `bigint` | não |  |
| 12 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 13 | `st_nao_possui_cpf` | `integer` | não |  |
| 14 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
