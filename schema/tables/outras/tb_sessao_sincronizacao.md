# tb_sessao_sincronizacao

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_unico_sessao` | `character varying(36)` | sim | PK |
| 2 | `co_usuario` | `bigint` | sim | FK → tb_usuario |
| 3 | `dt_inicio` | `date` | não |  |
| 4 | `dt_fim` | `date` | não |  |
| 5 | `dt_ultima_sincronizacao` | `date` | não |  |
| 6 | `co_unico_servidor` | `character varying(36)` | sim |  |
| 7 | `co_unico_aplicativo` | `character varying(36)` | sim |  |
| 8 | `co_origem` | `bigint` | sim | FK → tb_cds_tipo_origem |
| 9 | `co_recebimento_lote` | `bigint` | não |  |
| 10 | `nu_versao_cliente` | `character varying(10)` | não |  |
