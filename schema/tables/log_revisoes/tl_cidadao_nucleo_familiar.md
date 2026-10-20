# tl_cidadao_nucleo_familiar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cidadao_nucleo_familiar` | `bigint` | sim | PK |
| 4 | `dt_ultima_atualizacao` | `date` | não |  |
| 5 | `nu_ine` | `character varying(255)` | não |  |
| 6 | `nu_cnes` | `character varying(20)` | não |  |
| 7 | `nu_cpf_cns_responsavel` | `character varying(255)` | não |  |
| 8 | `st_responsavel` | `integer` | não |  |
| 9 | `st_mudou_se` | `integer` | não |  |
| 10 | `co_cidadao` | `bigint` | não |  |
| 11 | `nu_cns_profissional` | `character varying(16)` | não |  |
| 12 | `nu_cbo2002` | `character varying(10)` | não |  |
| 13 | `co_grau_parentesco` | `integer` | não |  |
