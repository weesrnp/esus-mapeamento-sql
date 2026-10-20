# tl_cds_visita_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 26

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_ficha_visita_domiciliar` | `bigint` | não |  |
| 2 | `co_seq_cds_visita_domiciliar` | `bigint` | sim | PK |
| 3 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `nu_prontuario` | `character varying(255)` | não |  |
| 6 | `st_acompanhada_outro_prof` | `integer` | não |  |
| 7 | `co_revisao` | `bigint` | sim | PK |
| 8 | `co_tipo_revisao` | `integer` | não |  |
| 9 | `co_cds_turno` | `bigint` | não |  |
| 10 | `co_sexo` | `bigint` | não |  |
| 11 | `co_cds_visita_dom_desfecho` | `bigint` | não |  |
| 12 | `tp_cds_imovel` | `bigint` | não |  |
| 13 | `nu_micro_area` | `character varying(3)` | não |  |
| 14 | `st_fora_area` | `integer` | não |  |
| 15 | `nu_peso` | `double precision` | não |  |
| 16 | `nu_altura` | `double precision` | não |  |
| 17 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 18 | `tp_glicemia` | `integer` | não |  |
| 19 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 20 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 21 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 22 | `nu_latitude` | `double precision` | não |  |
| 23 | `nu_longitude` | `double precision` | não |  |
| 24 | `co_uuid_origem_fcd` | `character varying(44)` | não |  |
| 25 | `st_nao_possui_cpf` | `integer` | não |  |
| 26 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
