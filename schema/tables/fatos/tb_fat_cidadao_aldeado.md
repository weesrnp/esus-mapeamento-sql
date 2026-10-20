# tb_fat_cidadao_aldeado

Tipo: tabela  
Grupo: fatos  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cidadao_aldeado` | `bigint` | sim | PK |
| 2 | `co_fat_cad_individual` | `bigint` | não | FK → tb_fat_cad_individual |
| 3 | `no_tradicional` | `character varying(255)` | não |  |
| 4 | `no_responsavel_legal` | `character varying(255)` | não |  |
| 5 | `co_local_ocorrencia_nasc` | `integer` | não |  |
| 6 | `co_aldeia_nascimento` | `bigint` | não |  |
| 7 | `co_funcao_social` | `integer` | não |  |
| 8 | `ds_unidade_funai` | `character varying(255)` | não |  |
| 9 | `nu_livro` | `integer` | não |  |
| 10 | `nu_folha` | `integer` | não |  |
| 11 | `nu_cadastro_unico` | `character varying(255)` | não |  |
| 12 | `nu_dne_uf` | `character varying(255)` | não |  |
| 13 | `co_dim_tempo_reconhecimento` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `co_dim_tempo_emissao` | `bigint` | não | FK → tb_dim_tempo |
| 15 | `co_dim_tempo_ausencia` | `bigint` | não | FK → tb_dim_tempo |
| 16 | `co_dim_tempo_retorno` | `bigint` | não | FK → tb_dim_tempo |
