# tb_cds_tipo_imovel

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_tipo_imovel` | `bigint` | sim | PK |
| 2 | `no_cds_tipo_imovel` | `character varying(255)` | não |  |
| 3 | `no_identificador` | `character varying(255)` | não |  |

Referenciada por: `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cds_visita_domiciliar`
