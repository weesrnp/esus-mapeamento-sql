# tb_cidadao_nucleo_familiar

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao_nucleo_familiar` | `bigint` | sim | PK |
| 2 | `dt_ultima_atualizacao` | `date` | sim |  |
| 3 | `nu_ine` | `character varying(255)` | não |  |
| 4 | `nu_cnes` | `character varying(20)` | sim |  |
| 5 | `nu_cpf_cns_responsavel` | `character varying(255)` | não |  |
| 6 | `st_responsavel` | `integer` | sim |  |
| 7 | `st_mudou_se` | `integer` | sim |  |
| 8 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 9 | `nu_cns_profissional` | `character varying(16)` | não |  |
| 10 | `nu_cbo2002` | `character varying(10)` | não |  |
| 11 | `co_grau_parentesco` | `integer` | não | FK → tb_grau_parentesco |
