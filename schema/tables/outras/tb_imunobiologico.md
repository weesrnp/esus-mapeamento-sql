# tb_imunobiologico

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_imunobiologico` | `bigint` | sim | PK |
| 2 | `sg_imunobiologico` | `character varying(255)` | não |  |
| 3 | `no_imunobiologico` | `character varying(255)` | não |  |
| 4 | `no_filtro_imunobiologico` | `character varying(255)` | não |  |
| 5 | `co_classe_imunobiologico` | `bigint` | não | FK → tb_classe_imunobiologico |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `st_covid` | `integer` | não |  |

Referenciada por: `tb_calendario_vacinal`, `tb_cds_vacina`, `tb_imunobiologico_lote`, `tb_registro_vacinacao`, `tb_regra_vacinal_dose`, `tb_regra_vacinal_estrategia`, `tb_substancia_espec_alergia`
