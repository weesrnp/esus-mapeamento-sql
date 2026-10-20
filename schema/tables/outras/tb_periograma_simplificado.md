# tb_periograma_simplificado

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_periograma_simplificado` | `bigint` | sim | PK |
| 2 | `ds_sextante_1` | `character varying(2)` | sim |  |
| 3 | `ds_sextante_2` | `character varying(2)` | sim |  |
| 4 | `ds_sextante_3` | `character varying(2)` | sim |  |
| 5 | `ds_sextante_4` | `character varying(2)` | sim |  |
| 6 | `ds_sextante_5` | `character varying(2)` | sim |  |
| 7 | `ds_sextante_6` | `character varying(2)` | sim |  |
| 8 | `ds_observacao` | `character varying(400)` | não |  |
| 9 | `co_atend_odonto` | `bigint` | sim | FK → tb_atend_prof_odonto |
| 10 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
