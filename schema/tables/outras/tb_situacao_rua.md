# tb_situacao_rua

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_situacao_rua` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 3 | `st_em_situacao_rua` | `integer` | não |  |
| 4 | `co_tempo_situacao_rua` | `bigint` | não | FK → tb_tempo_situacao_rua |
| 5 | `st_recebe_beneficio` | `integer` | não |  |
| 6 | `st_possui_referencia_familiar` | `integer` | não |  |
| 7 | `co_quantidade_alimento_dia` | `bigint` | não | FK → tb_quantidade_alimentacao_dia |
| 8 | `st_visita_familiar_frequencia` | `integer` | não |  |
| 9 | `st_acesso_higiene_pessoal` | `integer` | não |  |
| 10 | `no_grau_parentesco_familiar` | `character varying(100)` | não |  |
| 11 | `st_acompanhado_outra_institui` | `integer` | não |  |
| 12 | `no_outra_institucao_acompanha` | `character varying(100)` | não |  |

Referenciada por: `rl_situacao_rua_hgiene_pssoal`, `rl_situacao_rua_origem_alimnt`
