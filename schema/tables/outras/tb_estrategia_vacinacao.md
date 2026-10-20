# tb_estrategia_vacinacao

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_estrategia_vacinacao` | `bigint` | sim | PK |
| 2 | `nu_estrategia_vacinacao` | `character varying(10)` | não |  |
| 3 | `no_estrategia_vacinacao` | `character varying(255)` | não |  |
| 4 | `no_estrategia_vacinacao_filtro` | `character varying(255)` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
| 6 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_cds_vacina`, `tb_registro_vacinacao`, `tb_regra_vacinal_estrategia`
