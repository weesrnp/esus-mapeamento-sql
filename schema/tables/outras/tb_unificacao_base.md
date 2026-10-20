# tb_unificacao_base

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_unificacao_base` | `bigint` | sim | PK |
| 2 | `co_identificador_instalacao` | `character varying(255)` | não |  |
| 3 | `no_instalacao` | `character varying(255)` | sim |  |
| 4 | `ds_chave` | `character varying(255)` | não |  |
| 5 | `nu_offset_profissional` | `bigint` | sim |  |
| 6 | `nu_offset_cidadao` | `bigint` | sim |  |
| 7 | `st_unificacao_base` | `character varying(60)` | sim |  |
| 8 | `dt_solicitacao_unificacao_base` | `timestamp without time zone` | sim |  |
| 9 | `dt_fim_unificacao_base` | `timestamp without time zone` | não |  |
| 10 | `dt_ativ_assinatura_registros` | `date` | não |  |

Referenciada por: `tb_ativ_col_unificacao_base`, `tb_cidadao_unificacao_base`, `tb_criador_reserva_unif_base`, `tb_equipe_unificacao_base`, `tb_estagio_unificacao_base`, `tb_unidade_saude_unif_base`
