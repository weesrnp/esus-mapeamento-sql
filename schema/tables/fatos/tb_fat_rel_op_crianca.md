# tb_fat_rel_op_crianca

Tipo: tabela  
Grupo: fatos  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_rel_op_crianca` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `st_teste_pezinho` | `integer` | não |  |
| 4 | `st_teste_orelhinha` | `integer` | não |  |
| 5 | `st_teste_olhinho` | `integer` | não |  |
| 6 | `dt_atend_odonto` | `date` | não |  |
| 7 | `dt_ultima_visita_domiciliar` | `date` | não |  |
| 8 | `dt_atend_puericultura` | `date` | não |  |
| 9 | `dt_1_consulta_puericultura` | `date` | não |  |
| 10 | `co_dim_aleitamento_materno` | `bigint` | não |  |
| 11 | `st_vacina_em_dia` | `integer` | não |  |
| 12 | `nu_perimetro_cefalico` | `double precision` | não |  |
| 13 | `nu_altura` | `double precision` | não |  |
| 14 | `nu_peso` | `double precision` | não |  |
