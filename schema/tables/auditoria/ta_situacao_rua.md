# ta_situacao_rua

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasituacaorua` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_situacao_rua` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `st_em_situacao_rua` | `integer` | não |  |
| 7 | `co_tempo_situacao_rua` | `bigint` | não |  |
| 8 | `st_recebe_beneficio` | `integer` | não |  |
| 9 | `st_possui_referencia_familiar` | `integer` | não |  |
| 10 | `co_quantidade_alimento_dia` | `bigint` | não |  |
| 11 | `st_visita_familiar_frequencia` | `integer` | não |  |
| 12 | `st_acesso_higiene_pessoal` | `integer` | não |  |
| 13 | `no_grau_parentesco_familiar` | `character varying(100)` | não |  |
| 14 | `st_acompanhado_outra_institui` | `integer` | não |  |
| 15 | `no_outra_institucao_acompanha` | `character varying(100)` | não |  |
