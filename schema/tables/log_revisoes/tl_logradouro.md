# tl_logradouro

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_logradouro` | `bigint` | sim | PK |
| 4 | `nu_dne` | `character varying(8)` | não |  |
| 5 | `no_preposicao` | `character varying(6)` | não |  |
| 6 | `no_logradouro` | `character varying(72)` | não |  |
| 7 | `nu_cep` | `character varying(8)` | não |  |
| 8 | `nu_inicial_trecho` | `character varying(22)` | não |  |
| 9 | `nu_final_trecho` | `character varying(22)` | não |  |
| 10 | `tp_logradouro` | `bigint` | não |  |
| 11 | `co_titulo_patente` | `bigint` | não |  |
| 12 | `tp_paridade` | `bigint` | não |  |
| 13 | `sg_tipo_registro` | `character varying(1)` | não |  |
| 14 | `no_logradouro_filtro` | `character varying(150)` | não |  |
| 15 | `no_logradouro_exibicao` | `character varying(150)` | não |  |
| 16 | `nu_lote` | `character varying(22)` | não |  |
| 17 | `no_complemento` | `character varying(72)` | não |  |
| 18 | `ds_letra_numero_complemento` | `character varying(22)` | não |  |
| 19 | `co_bairro_dne` | `character varying(8)` | não |  |
