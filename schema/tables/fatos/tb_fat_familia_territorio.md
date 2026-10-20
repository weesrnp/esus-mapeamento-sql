# tb_fat_familia_territorio

Tipo: tabela  
Grupo: fatos  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_familia_territorio` | `bigint` | sim | PK |
| 2 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 3 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 4 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 5 | `nu_uuid_ficha_origem` | `character varying(92)` | não |  |
| 6 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 7 | `co_fat_cad_domiciliar` | `bigint` | não |  |
| 8 | `co_dim_tempo_fcd` | `bigint` | sim | FK → tb_dim_tempo |
| 9 | `nu_prontuario` | `character varying(30)` | não |  |
| 10 | `nu_micro_area` | `character varying(3)` | não |  |
| 11 | `st_familia_fcd_mudouse` | `integer` | não |  |
| 12 | `st_resp_com_fci_no_territorio` | `integer` | não |  |
| 13 | `st_resp_declarado_no_fci` | `integer` | não |  |
| 14 | `st_resp_outro_fcd_mais_atual` | `integer` | não |  |
| 15 | `st_responsavel_ainda_reside` | `integer` | não |  |
| 16 | `st_responsavel_vivo` | `integer` | não |  |
| 17 | `st_familia_consistente` | `integer` | não |  |
| 18 | `st_processo_att_cidadao` | `integer` | não |  |
| 19 | `co_fat_cidadao_territorio` | `bigint` | não | FK → tb_fat_cidadao_territorio |
