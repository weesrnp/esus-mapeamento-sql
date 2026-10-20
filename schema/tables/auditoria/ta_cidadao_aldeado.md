# ta_cidadao_aldeado

Tipo: tabela  
Grupo: auditoria  
Colunas: 20

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadaoaldeado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cidadao_aldeado` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `co_aldeia_nascimento` | `bigint` | não |  |
| 7 | `co_funcao_social` | `bigint` | não |  |
| 8 | `co_local_ocorrencia` | `bigint` | não |  |
| 9 | `no_tradicional` | `character varying(70)` | não |  |
| 10 | `no_responsavel_legal` | `character varying(70)` | não |  |
| 11 | `st_chefe_familia` | `integer` | não |  |
| 12 | `co_uf_nascimento` | `bigint` | não |  |
| 13 | `no_unidade_funai` | `character varying(40)` | não |  |
| 14 | `nu_livro` | `integer` | não |  |
| 15 | `nu_folha` | `integer` | não |  |
| 16 | `nu_cadastro_unico` | `character varying(20)` | não |  |
| 17 | `dt_emissao` | `date` | não |  |
| 18 | `dt_reconhecimento` | `date` | não |  |
| 19 | `dt_ausencia` | `date` | não |  |
| 20 | `dt_retorno` | `date` | não |  |
