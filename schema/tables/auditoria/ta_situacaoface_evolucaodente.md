# ta_situacaoface_evolucaodente

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasituacaofaceevolucdnt` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_stface_evodente` | `bigint` | não |  |
| 5 | `co_evolucao_dente` | `bigint` | não |  |
| 6 | `co_st_face` | `bigint` | não |  |
