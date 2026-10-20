# tb_credencial_integracao

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_credencial_integracao` | `bigint` | sim | PK |
| 2 | `no_usuario` | `character varying(50)` | sim |  |
| 3 | `ds_senha` | `character varying(200)` | sim |  |
| 4 | `no_responsavel` | `character varying(100)` | sim |  |
| 5 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 6 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 7 | `st_ativo` | `integer` | sim |  |
| 8 | `no_credencial` | `character varying(100)` | não |  |
| 9 | `ds_email` | `character varying(200)` | sim |  |
| 10 | `tp_pessoa` | `character varying(30)` | sim |  |
| 11 | `ds_cpf_cnpj` | `character varying(14)` | sim |  |
| 12 | `ds_url_webhook_regulacao` | `character varying(255)` | não |  |

Referenciada por: `rl_credencial_integ_localidade`, `rl_credencial_integ_recurso`, `rl_lote_credencial_integracao`, `tb_regulacao_evolucao`
