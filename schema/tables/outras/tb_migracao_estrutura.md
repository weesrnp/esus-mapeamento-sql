# tb_migracao_estrutura

Tipo: tabela  
Grupo: outras  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_migracao_estrutura` | `character varying(255)` | sim |  |
| 2 | `no_autor_migracao` | `character varying(255)` | sim |  |
| 3 | `no_arquivo_migracao` | `character varying(255)` | sim |  |
| 4 | `dt_execucao` | `timestamp without time zone` | sim |  |
| 5 | `nu_ordem_execucao` | `bigint` | sim |  |
| 6 | `no_tipo_execucao` | `character varying(10)` | sim |  |
| 7 | `no_md5_soma_verificacao` | `character varying(35)` | não |  |
| 8 | `no_descricao` | `character varying(255)` | não |  |
| 9 | `ds_comentario` | `character varying(255)` | não |  |
| 10 | `no_etiqueta` | `character varying(255)` | não |  |
| 11 | `no_versao_liquibase` | `character varying(20)` | não |  |
