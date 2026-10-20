# tl_cds_vacinacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_vacinacao` | `bigint` | sim | PK |
| 4 | `co_cds_turno` | `bigint` | não |  |
| 5 | `nu_prontuario` | `character varying(255)` | não |  |
| 6 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 7 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 8 | `co_sexo` | `bigint` | não |  |
| 9 | `co_local_atend` | `bigint` | não |  |
| 10 | `st_viajante` | `integer` | não |  |
| 11 | `st_comunicante_hanseniase` | `integer` | não |  |
| 12 | `st_gestante` | `integer` | não |  |
| 13 | `st_puerpera` | `integer` | não |  |
| 14 | `co_cds_ficha_vacinacao` | `bigint` | não |  |
| 15 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 16 | `co_condicao_maternal` | `bigint` | não |  |
| 17 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
| 18 | `st_nao_possui_cpf` | `integer` | não |  |
