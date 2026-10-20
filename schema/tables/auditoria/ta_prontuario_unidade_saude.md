# ta_prontuario_unidade_saude

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprontuariounidadesaud` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_prontuario_unidade_saud` | `bigint` | não |  |
| 5 | `co_unidade_saude` | `bigint` | não |  |
| 6 | `co_cidadao` | `bigint` | não |  |
| 7 | `nu_prontuario` | `character varying(30)` | não |  |
