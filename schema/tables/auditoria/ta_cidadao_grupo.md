# ta_cidadao_grupo

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadaogrupo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cidadao_grupo` | `bigint` | não |  |
| 5 | `nu_cns` | `character varying(16)` | não |  |
| 6 | `nu_uuid_ultima_ficha` | `character varying(96)` | não |  |
| 7 | `nu_uuid_origem` | `character varying(96)` | não |  |
| 8 | `co_cidadao` | `bigint` | não |  |
| 9 | `co_cidadao_master` | `bigint` | não |  |
| 10 | `co_cidadao_unificado` | `bigint` | não |  |
| 11 | `dt_atualizacao` | `timestamp with time zone` | não |  |
| 12 | `nu_cpf` | `character varying(11)` | não |  |
