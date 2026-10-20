# ta_cirurgias_internacoes

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacirurgiasinternacoes` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cirurgias_internacoes` | `bigint` | não |  |
| 5 | `ds_cirurgia_internacao` | `character varying(400)` | não |  |
| 6 | `ds_observacoes` | `character varying(800)` | não |  |
| 7 | `dt_cirurgia_internacao` | `date` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `co_atend_prof` | `bigint` | não |  |
