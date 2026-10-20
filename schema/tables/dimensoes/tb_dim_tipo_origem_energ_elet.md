# tb_dim_tipo_origem_energ_elet

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tp_org_energia_elet` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_tipo_origem_energia_eletric` | `character varying(100)` | sim |  |
| 4 | `co_ordem` | `integer` | sim |  |

Referenciada por: `tb_fat_cad_domiciliar`
