# tb_logradouro

Tipo: tabela  
Grupo: outras  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_logradouro` | `bigint` | sim | PK |
| 2 | `nu_dne` | `character varying(8)` | sim |  |
| 3 | `no_preposicao` | `character varying(6)` | não |  |
| 4 | `no_logradouro` | `character varying(100)` | sim |  |
| 5 | `nu_cep` | `character varying(8)` | sim |  |
| 6 | `nu_inicial_trecho` | `character varying(22)` | não |  |
| 7 | `nu_final_trecho` | `character varying(22)` | não |  |
| 8 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 9 | `co_titulo_patente` | `bigint` | não | FK → tb_titulo_patente |
| 10 | `tp_paridade` | `bigint` | não | FK → tb_tipo_paridade |
| 11 | `sg_tipo_registro` | `character varying(1)` | sim |  |
| 12 | `no_logradouro_filtro` | `character varying(150)` | sim |  |
| 13 | `no_logradouro_exibicao` | `character varying(150)` | sim |  |
| 14 | `nu_lote` | `character varying(22)` | não |  |
| 15 | `no_complemento` | `character varying(72)` | não |  |
| 16 | `ds_letra_numero_complemento` | `character varying(22)` | não |  |
| 17 | `co_bairro_dne` | `character varying(8)` | sim | FK → tb_bairro |
