# ta_unificacao_base

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taunificacaobase` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_unificacao_base` | `bigint` | não |  |
| 5 | `co_identificador_instalacao` | `character varying(255)` | não |  |
| 6 | `no_instalacao` | `character varying(255)` | não |  |
| 7 | `ds_chave` | `character varying(255)` | não |  |
| 8 | `nu_offset_profissional` | `bigint` | não |  |
| 9 | `nu_offset_cidadao` | `bigint` | não |  |
| 10 | `st_unificacao_base` | `character varying(60)` | não |  |
| 11 | `dt_solicitacao_unificacao_base` | `timestamp without time zone` | não |  |
| 12 | `dt_fim_unificacao_base` | `timestamp without time zone` | não |  |
| 13 | `dt_ativ_assinatura_registros` | `date` | não |  |
