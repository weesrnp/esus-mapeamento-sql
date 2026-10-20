# tb_acomp_cidadaos_vinc_prcs

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_acomp_cidad_vinc_prcs` | `bigint` | sim | PK |
| 2 | `no_status_processamento` | `character varying(100)` | sim |  |
| 3 | `dt_inicio` | `timestamp without time zone` | sim |  |
| 4 | `dt_fim` | `timestamp without time zone` | não |  |
| 5 | `ds_mensagem_erro` | `character varying(2000)` | não |  |
