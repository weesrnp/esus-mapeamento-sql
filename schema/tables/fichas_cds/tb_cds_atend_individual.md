# tb_cds_atend_individual

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 30

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_atend_individual` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_atend_individual` | `bigint` | sim | FK → tb_cds_ficha_atend_individual |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `nu_prontuario` | `character varying(255)` | não |  |
| 6 | `dt_nascimento` | `timestamp without time zone` | sim |  |
| 7 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 8 | `co_cds_aleitamento_materno` | `bigint` | não | FK → tb_cds_aleitamento_materno |
| 9 | `dt_ultima_menstruacao` | `timestamp without time zone` | não |  |
| 10 | `co_cds_pic` | `bigint` | não | FK → tb_cds_pic |
| 11 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 12 | `st_ficou_observacao` | `integer` | não |  |
| 13 | `st_vacina_em_dia` | `integer` | não |  |
| 14 | `nu_idade_gestacional` | `integer` | não |  |
| 15 | `co_ad_modalidade` | `bigint` | não | FK → tb_ad_modalidade |
| 16 | `nu_peso` | `double precision` | não |  |
| 17 | `nu_altura` | `double precision` | não |  |
| 18 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 19 | `tp_atend` | `bigint` | não | FK → tb_tipo_atend |
| 20 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 21 | `st_gravidez_planejada` | `integer` | não |  |
| 22 | `qt_gestacao_previa` | `integer` | não |  |
| 23 | `qt_parto` | `integer` | não |  |
| 24 | `co_racionalidade_saude` | `bigint` | não | FK → tb_racionalidade_saude |
| 25 | `nu_perimetro_cefalico` | `double precision` | não |  |
| 26 | `co_cid10_2` | `bigint` | não | FK → tb_cid10 |
| 27 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 28 | `st_nasf` | `integer` | sim |  |
| 29 | `st_nao_possui_cpf` | `integer` | não |  |
| 30 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_cds_atend_individual_ciap`, `rl_cds_atend_individual_condut`, `rl_cds_atend_individual_exame`, `rl_cds_atend_individual_nasf`
