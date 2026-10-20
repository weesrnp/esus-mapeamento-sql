# tb_dim_tipo_participacao_atend

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tp_particip_atend` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | sim |  |
| 3 | `no_tipo_participacao_atend` | `character varying(255)` | sim |  |

Referenciada por: `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`
