# tb_cds_visita_domiciliar

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_visita_domiciliar` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_visita_domiciliar` | `bigint` | sim | FK → tb_cds_ficha_visita_domiciliar |
| 3 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 4 | `nu_prontuario` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 6 | `st_acompanhada_outro_prof` | `integer` | não |  |
| 7 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 8 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 9 | `co_cds_visita_dom_desfecho` | `bigint` | não | FK → tb_cds_visita_dom_desfecho |
| 10 | `tp_cds_imovel` | `bigint` | não | FK → tb_cds_tipo_imovel |
| 11 | `nu_micro_area` | `character varying(3)` | não |  |
| 12 | `st_fora_area` | `integer` | não |  |
| 13 | `nu_peso` | `double precision` | não |  |
| 14 | `nu_altura` | `double precision` | não |  |
| 15 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 16 | `tp_glicemia` | `integer` | não | FK → tb_tipo_glicemia |
| 17 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 18 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 19 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 20 | `nu_latitude` | `double precision` | não |  |
| 21 | `nu_longitude` | `double precision` | não |  |
| 22 | `co_uuid_origem_fcd` | `character varying(96)` | não |  |
| 23 | `st_nao_possui_cpf` | `integer` | não |  |
| 24 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_cds_visita_dom_motivo`
