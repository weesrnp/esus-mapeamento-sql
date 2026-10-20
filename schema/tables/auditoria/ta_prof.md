# ta_prof

Tipo: tabela  
Grupo: auditoria  
Colunas: 29

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprof` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_prof` | `bigint` | não |  |
| 5 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 6 | `co_uf_emissora_conselho_classe` | `bigint` | não |  |
| 7 | `co_conselho_classe` | `bigint` | não |  |
| 8 | `nu_cpf` | `character varying(11)` | não |  |
| 9 | `nu_cns` | `character varying(16)` | não |  |
| 10 | `no_profissional` | `character varying(500)` | não |  |
| 11 | `no_profissional_filtro` | `character varying(600)` | não |  |
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
| 26 | `co_usuario` | `bigint` | não |  |
| 27 | `no_sexo` | `character varying(24)` | não |  |
| 28 | `no_social_profissional` | `character varying(255)` | não |  |
| 29 | `no_civil_profissional` | `character varying(255)` | não |  |
