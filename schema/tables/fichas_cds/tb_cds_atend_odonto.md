# tb_cds_atend_odonto

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_atend_odonto` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_atend_odonto` | `bigint` | sim | FK → tb_cds_ficha_atend_odonto |
| 3 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 4 | `nu_prontuario` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp without time zone` | sim |  |
| 6 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 7 | `st_gestante` | `integer` | não |  |
| 8 | `st_necessidade_especial` | `integer` | não |  |
| 9 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 10 | `tp_atend` | `bigint` | não | FK → tb_tipo_atend |
| 11 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 12 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 13 | `st_nasf` | `integer` | sim |  |
| 14 | `st_nao_possui_cpf` | `integer` | não |  |
| 15 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_cds_atend_odont_tip_vig_buc`, `rl_cds_atend_odonto_proced`, `rl_cds_atend_odonto_tipo_cnslt`, `rl_cds_atend_odonto_tipo_encam`, `rl_cds_atend_odonto_tipo_fornc`
