# tl_prof

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_ator_papel` | `bigint` | sim | PK |
| 4 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 5 | `co_uf_emissora_conselho_classe` | `bigint` | não |  |
| 6 | `co_conselho_classe` | `bigint` | não |  |
| 7 | `nu_cpf` | `character varying(11)` | não |  |
| 8 | `nu_cns` | `character varying(16)` | não |  |
| 10 | `no_profissional_filtro` | `character varying(600)` | não |  |
| 11 | `co_sexo` | `bigint` | não |  |
| 12 | `dt_nascimento` | `date` | não |  |
| 13 | `nu_telefone` | `character varying(255)` | não |  |
| 14 | `ds_email` | `character varying(255)` | não |  |
| 15 | `ds_cep` | `character varying(8)` | não |  |
| 16 | `ds_complemento` | `character varying(50)` | não |  |
| 17 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 18 | `ds_logradouro` | `character varying(150)` | não |  |
| 19 | `co_uf` | `bigint` | não |  |
| 20 | `co_localidade_endereco` | `bigint` | não |  |
| 21 | `nu_numero` | `character varying(20)` | não |  |
| 22 | `st_sem_numero` | `integer` | não |  |
| 23 | `no_bairro` | `character varying(255)` | não |  |
| 24 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 25 | `tp_logradouro` | `bigint` | não |  |
