# tb_tipo_reacao_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tipo_reacao_alergia` | `bigint` | sim | PK |
| 2 | `no_tipo_reacao_alergia` | `character varying(15)` | sim |  |
| 3 | `no_identificador` | `character varying(15)` | sim |  |
| 4 | `no_code` | `character varying(15)` | sim |  |

Referenciada por: `tb_alergia_evolucao`
