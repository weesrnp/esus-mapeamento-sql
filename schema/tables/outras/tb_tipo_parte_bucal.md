# tb_tipo_parte_bucal

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_parte_bucal` | `bigint` | sim | PK |
| 2 | `no_tipo_parte_bucal` | `character varying(100)` | sim |  |
| 3 | `no_identificador` | `character varying(100)` | sim |  |
| 4 | `qt_procedimentos` | `smallint` | não |  |

Referenciada por: `tb_evolucao_odonto`, `tb_parte_bucal_proced`
