# tb_dado_rel_processamento

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dado_rel_processamento` | `bigint` | sim | PK |
| 2 | `dt_marca_reprocessamento` | `timestamp with time zone` | não |  |
| 3 | `co_ator_papel` | `bigint` | não | FK → tb_ator_papel |
| 4 | `dt_processamento_inicio` | `timestamp with time zone` | não |  |
| 5 | `dt_processamento_producao` | `timestamp with time zone` | não |  |
| 6 | `dt_processamento_consolidados` | `timestamp with time zone` | não |  |
| 7 | `dt_processamento_operacionais` | `timestamp with time zone` | não |  |
| 8 | `dt_processamento_conclusao` | `timestamp with time zone` | não |  |
| 9 | `dt_att_cidadao_pec_etl` | `timestamp with time zone` | não |  |
| 10 | `co_dim_tempo_inicio` | `bigint` | não | FK → tb_dim_tempo |
| 11 | `co_dim_tempo_final` | `bigint` | não | FK → tb_dim_tempo |
| 12 | `no_etapa_interrompida` | `character varying(255)` | não |  |
