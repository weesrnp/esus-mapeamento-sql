# tb_cds_domicilio_familia

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_domicilio_familia` | `bigint` | sim | PK |
| 2 | `co_cds_cad_domiciliar` | `bigint` | sim | FK → tb_cds_cad_domiciliar |
| 3 | `nu_prontuario` | `character varying(255)` | não |  |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp without time zone` | não |  |
| 6 | `co_renda_familiar` | `bigint` | não | FK → tb_renda_familiar |
| 7 | `dt_mudanca` | `timestamp without time zone` | não |  |
| 8 | `qt_membros_familia` | `integer` | não |  |
| 9 | `st_mudanca` | `integer` | não |  |
| 10 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
