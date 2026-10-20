# tb_via_adm_vacina

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_via_adm_vacina` | `bigint` | sim | PK |
| 2 | `no_via_adm_vacina` | `character varying(255)` | não |  |
| 3 | `co_via_adm_vacina_rnds` | `character varying(10)` | não |  |
| 4 | `ds_versao_minima_transport` | `character varying(30)` | não |  |
| 5 | `ds_versao_maxima_transport` | `character varying(30)` | não |  |

Referenciada por: `tb_cds_vacina`, `tb_registro_vacinacao`
