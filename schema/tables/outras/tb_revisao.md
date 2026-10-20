# tb_revisao

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_revisao` | `bigint` | sim | PK |
| 2 | `dt_revisao` | `timestamp without time zone` | não |  |
| 3 | `nu_cns` | `character varying(16)` | não |  |
| 4 | `nu_cnes` | `character varying(20)` | não |  |
| 5 | `co_usuario` | `bigint` | não |  |
| 6 | `ds_componente_gerador` | `text` | não |  |
| 7 | `ds_entidades` | `text` | não |  |
| 8 | `tp_registro_afetado` | `integer` | não |  |
| 9 | `co_registro_afetado` | `text` | não |  |
| 10 | `st_processo_auditoria_eventos` | `integer` | não |  |
