# tb_mrt_vacina

Tipo: tabela  
Grupo: data_marts  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_mrt_vacina` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `nu_identificador_imuno` | `integer` | sim |  |
| 4 | `no_dose` | `character varying(100)` | não |  |
| 5 | `nu_ordem_dose` | `integer` | não |  |
| 6 | `dt_vacina_aplicada` | `date` | não |  |
| 7 | `no_imunobiologico` | `character varying(200)` | não |  |
| 8 | `sg_imunobiologico` | `character varying(50)` | não |  |
| 9 | `dt_proxima_expiracao` | `date` | não |  |
