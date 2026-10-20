# tb_tipo_servico

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tipo_servico` | `bigint` | sim | PK |
| 2 | `no_tipo_servico` | `character varying(50)` | sim |  |
| 3 | `no_tipo_servico_filtro` | `character varying(50)` | não |  |
| 4 | `st_interno` | `integer` | sim |  |
| 6 | `co_localidade` | `bigint` | não | FK → tb_localidade |

Referenciada por: `rl_atend_tipo_servico`, `rl_tipo_servico_padrao`, `rl_unidade_saude_tipo_servico`, `tb_lista_espera`
