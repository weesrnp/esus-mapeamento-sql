# tb_cidadao_grupo_historico

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cid_grupo_historico` | `bigint` | sim | PK |
| 2 | `co_cidadao_grupo` | `bigint` | sim | FK → tb_cidadao_grupo |
| 3 | `co_tipo_documento_cidadao` | `bigint` | sim | FK → tb_tipo_documento_cidadao |
| 4 | `ds_documento` | `character varying(16)` | sim |  |
| 5 | `dt_exclusao` | `timestamp without time zone` | sim |  |
