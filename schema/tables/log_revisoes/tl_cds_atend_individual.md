# tl_cds_atend_individual

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 32

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_atend_individual` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_atend_individual` | `bigint` | não |  |
| 3 | `co_prontuario` | `bigint` | não |  |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `nu_prontuario` | `character varying(255)` | não |  |
| 6 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 7 | `co_local_atend` | `bigint` | não |  |
| 8 | `co_cds_aleitamento_materno` | `bigint` | não |  |
| 9 | `dt_ultima_menstruacao` | `timestamp without time zone` | não |  |
| 10 | `co_cds_pic` | `bigint` | não |  |
| 11 | `co_cid10` | `bigint` | não |  |
| 12 | `st_ficou_observacao` | `integer` | não |  |
| 13 | `st_vacina_em_dia` | `integer` | não |  |
| 14 | `nu_idade_gestacional` | `integer` | não |  |
| 15 | `co_ad_modalidade` | `bigint` | não |  |
| 16 | `nu_peso` | `double precision` | não |  |
| 17 | `nu_altura` | `double precision` | não |  |
| 18 | `co_revisao` | `bigint` | sim | PK |
| 19 | `co_tipo_revisao` | `integer` | não |  |
| 20 | `co_sexo` | `bigint` | não |  |
| 21 | `tp_atend` | `bigint` | não |  |
| 22 | `co_cds_turno` | `bigint` | não |  |
| 23 | `st_gravidez_planejada` | `integer` | não |  |
| 24 | `qt_gestacao_previa` | `integer` | não |  |
| 25 | `qt_parto` | `integer` | não |  |
| 26 | `co_racionalidade_saude` | `bigint` | não |  |
| 27 | `nu_perimetro_cefalico` | `double precision` | não |  |
| 28 | `co_cid10_2` | `bigint` | não |  |
| 29 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 30 | `st_nasf` | `integer` | não |  |
| 31 | `st_nao_possui_cpf` | `integer` | não |  |
| 32 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
