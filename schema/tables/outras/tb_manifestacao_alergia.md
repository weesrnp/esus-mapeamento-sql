# tb_manifestacao_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_manifestacao_alergia` | `bigint` | sim | PK |
| 2 | `no_manifestacao_alergia` | `character varying(30)` | sim |  |
| 3 | `no_sinonimo` | `character varying(60)` | não |  |
| 4 | `ds_manifestacao` | `character varying(100)` | sim |  |
| 5 | `no_code` | `character varying(30)` | sim |  |
| 6 | `no_filtro_manifestacao_alergia` | `character varying(91)` | não |  |

Referenciada por: `rl_manifest_alergiaevolucao`
