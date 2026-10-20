# tb_criticidade_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_criticidade_alergia` | `bigint` | sim | PK |
| 2 | `no_criticidade_alergia` | `character varying(50)` | não |  |
| 3 | `no_identificador` | `character varying(50)` | não |  |

Referenciada por: `tb_alergia_evolucao`
