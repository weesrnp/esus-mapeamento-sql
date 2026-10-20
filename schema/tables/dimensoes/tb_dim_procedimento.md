# tb_dim_procedimento

Tipo: tabela  
Grupo: dimensoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_procedimento` | `bigint` | sim | PK |
| 2 | `co_proced` | `character varying(100)` | não |  |
| 3 | `ds_proced` | `character varying(500)` | não |  |
| 4 | `co_seq_dim_proced_ref_ab` | `bigint` | não |  |
| 5 | `co_pai` | `bigint` | não | FK → tb_dim_procedimento |
| 6 | `st_registro_valido` | `integer` | não |  |
| 7 | `ds_filtro` | `character varying(350)` | não |  |

Referenciada por: `tb_dim_procedimento`, `tb_fat_atd_ind_exames`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_dom_proced`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_proced`, `tb_fat_atividade_coletiva`, `tb_fat_atvdd_coletiva_ext`, `tb_fat_proced_atend_proced`, `tb_fat_solicitacao_oci`
