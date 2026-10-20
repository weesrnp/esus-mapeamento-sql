# tl_cds_domicilio_familia

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_domicilio_familia` | `bigint` | sim | PK |
| 2 | `co_cds_cad_domiciliar` | `bigint` | não |  |
| 3 | `co_renda_familiar` | `bigint` | não |  |
| 4 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 5 | `dt_mudanca` | `timestamp without time zone` | não |  |
| 6 | `qt_membros_familia` | `integer` | não |  |
| 7 | `nu_prontuario` | `character varying(255)` | não |  |
| 8 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 9 | `co_revisao` | `bigint` | sim | PK |
| 10 | `co_tipo_revisao` | `integer` | não |  |
| 11 | `st_mudanca` | `integer` | não |  |
| 12 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
