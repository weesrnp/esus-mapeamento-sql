# tb_ivcf

Tipo: tabela  
Grupo: outras  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ivcf` | `bigint` | sim | PK |
| 2 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 3 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 4 | `nu_resultado` | `integer` | sim |  |
| 5 | `st_sg_idade` | `integer` | sim |  |
| 6 | `st_sg_percepcao_saude` | `integer` | sim |  |
| 7 | `st_sg_avd_instrumental` | `integer` | sim |  |
| 8 | `st_sg_avd_basica` | `integer` | sim |  |
| 9 | `st_sg_cognicao` | `integer` | sim |  |
| 10 | `st_sg_humor` | `integer` | sim |  |
| 11 | `st_sg_alcance_preensao_pinca` | `integer` | sim |  |
| 12 | `st_sg_cap_aerobica_muscular` | `integer` | sim |  |
| 13 | `st_sg_marcha` | `integer` | sim |  |
| 14 | `st_sg_continencia` | `integer` | sim |  |
| 15 | `st_sg_visao` | `integer` | sim |  |
| 16 | `st_sg_audicao` | `integer` | sim |  |
| 17 | `st_sg_comorbidade` | `integer` | sim |  |
| 18 | `dt_resultado` | `timestamp without time zone` | sim |  |

Referenciada por: `tb_ivcf_aplicacao`
