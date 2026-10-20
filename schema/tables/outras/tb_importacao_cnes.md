# tb_importacao_cnes

Tipo: tabela  
Grupo: outras  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_importacao_cnes` | `bigint` | sim | PK |
| 3 | `dt_relatorio` | `timestamp without time zone` | sim |  |
| 4 | `co_ator_papel_bkp` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não | FK → tb_prof |
| 6 | `nu_unidades_novas` | `bigint` | não |  |
| 7 | `nu_unidades_atualizadas` | `bigint` | não |  |
| 8 | `nu_equipes_novas` | `bigint` | não |  |
| 9 | `nu_equipes_atualizadas` | `bigint` | não |  |
| 10 | `nu_profissionais_novos` | `bigint` | não |  |
| 11 | `nu_profissionais_atualizados` | `bigint` | não |  |
| 12 | `nu_lotacoes_novas` | `bigint` | não |  |
| 13 | `nu_lotacoes_atualizadas` | `bigint` | não |  |
| 14 | `co_processo` | `bigint` | não | FK → tb_processo |
| 15 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 16 | `ds_detalhes` | `text` | não |  |
| 17 | `nu_vinc_equipes_novas` | `bigint` | não |  |
| 18 | `nu_vinc_equipes_atualizadas` | `bigint` | não |  |
