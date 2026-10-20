# tb_dim_estrategia_vacinacao

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_estrategia_vacnacao` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | não |  |
| 3 | `nu_estrategia_vacinacao` | `character varying(255)` | não |  |
| 4 | `no_estrategia_vacinacao` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_vacinacao_vacina`
