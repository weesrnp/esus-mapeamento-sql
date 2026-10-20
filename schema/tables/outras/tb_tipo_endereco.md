# tb_tipo_endereco

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_endereco` | `bigint` | sim | PK |
| 2 | `no_tipo_endereco` | `character varying(100)` | sim |  |
| 3 | `no_identificador` | `character varying(100)` | sim |  |

Referenciada por: `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`
