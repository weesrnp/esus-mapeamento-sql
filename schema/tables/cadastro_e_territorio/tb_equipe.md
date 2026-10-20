# tb_equipe

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_equipe` | `bigint` | sim | PK |
| 2 | `nu_ine` | `character varying(255)` | não |  |
| 3 | `st_ativo` | `integer` | sim |  |
| 4 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 5 | `qt_referencia` | `bigint` | não |  |
| 6 | `tp_equipe` | `bigint` | não | FK → tb_tipo_equipe |
| 7 | `ds_area` | `character varying(255)` | não |  |
| 8 | `no_equipe` | `character varying(255)` | não |  |
| 9 | `no_equipe_filtro` | `character varying(255)` | não |  |
| 10 | `co_unico_equipe` | `character varying(255)` | não |  |

Referenciada por: `tb_ad_cidadao`, `tb_atend`, `tb_config_atend_domiciliar`, `tb_cuidado_compartilhado`, `tb_estagio`, `tb_lista_espera`, `tb_lotacao`, `tb_vinculacao_equipes`
