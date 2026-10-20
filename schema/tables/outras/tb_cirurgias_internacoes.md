# tb_cirurgias_internacoes

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cirurgias_internacoes` | `bigint` | sim | PK |
| 2 | `ds_cirurgia_internacao` | `character varying(400)` | não |  |
| 3 | `ds_observacoes` | `character varying(800)` | não |  |
| 4 | `dt_cirurgia_internacao` | `date` | não |  |
| 5 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 6 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
