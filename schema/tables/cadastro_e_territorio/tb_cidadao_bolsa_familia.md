# tb_cidadao_bolsa_familia

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_bolsa_familia` | `bigint` | sim | PK |
| 2 | `nu_documento` | `character varying(15)` | sim |  |
| 3 | `tp_documento` | `character varying(3)` | sim |  |
| 4 | `no_cidadao` | `character varying(255)` | sim |  |
| 5 | `ds_vigencia` | `character varying(6)` | sim |  |
| 6 | `co_importacao_bolsa_familia` | `bigint` | sim | FK → tb_importacao_bolsa_familia |
| 7 | `nu_posicao_arquivo` | `bigint` | não |  |
