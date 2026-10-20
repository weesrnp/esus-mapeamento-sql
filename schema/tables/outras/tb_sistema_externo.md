# tb_sistema_externo

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sistema_externo` | `bigint` | sim | PK |
| 2 | `no_sistema` | `character varying(100)` | sim |  |
| 3 | `ds_url` | `character varying(2048)` | sim |  |
| 4 | `ds_chave_assinatura` | `character varying(128)` | sim |  |
| 5 | `no_responsavel` | `character varying(100)` | sim |  |
| 6 | `ds_email` | `character varying(255)` | sim |  |
| 7 | `tp_pessoa` | `character varying(8)` | sim |  |
| 8 | `ds_cpf_cnpj` | `character varying(14)` | sim |  |
| 9 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 10 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 11 | `st_ativo` | `integer` | sim |  |
| 12 | `tp_sistema_externo` | `character varying(12)` | sim |  |

Referenciada por: `rl_sistemaexterno_localidade`, `rl_sistemaexterno_perfil`
