# tb_cds_tipo_origem

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_tipo_origem` | `bigint` | sim | PK |
| 2 | `no_cds_tipo_origem` | `character varying(225)` | sim |  |
| 3 | `no_identificador` | `character varying(225)` | sim |  |

Referenciada por: `tb_cds_ficha_vacinacao`, `tb_cidadao_vinculacao_equipe`, `tb_sessao_sincronizacao`
