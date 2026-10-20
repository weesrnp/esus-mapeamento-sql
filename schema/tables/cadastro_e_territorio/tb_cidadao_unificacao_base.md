# tb_cidadao_unificacao_base

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_unificacao_base` | `bigint` | sim | PK |
| 2 | `nu_cpf` | `character varying(11)` | não |  |
| 3 | `nu_cns` | `character varying(16)` | não |  |
| 4 | `st_documentos_cidadao` | `integer` | não |  |
| 5 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 6 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
