# tl_cidadao_grupo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cidadao_grupo` | `bigint` | sim | PK |
| 4 | `nu_cns` | `character varying(16)` | não |  |
| 5 | `nu_uuid_ultima_ficha` | `character varying(96)` | não |  |
| 6 | `nu_uuid_origem` | `character varying(96)` | não |  |
| 7 | `co_cidadao` | `bigint` | não |  |
| 8 | `co_cidadao_master` | `bigint` | não |  |
| 9 | `co_cidadao_unificado` | `bigint` | não |  |
| 10 | `dt_atualizacao` | `timestamp with time zone` | não |  |
| 11 | `nu_cpf` | `character varying(11)` | não |  |
