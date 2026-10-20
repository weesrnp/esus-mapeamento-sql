# tb_dado_recebido_info_instalac

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dado_recebido_info_inst` | `bigint` | sim | PK |
| 2 | `nu_contra_chave` | `character varying(96)` | não |  |
| 3 | `co_unico_instalacao` | `character varying(96)` | não |  |
| 4 | `nu_identificador_responsavel` | `character varying(20)` | não |  |
| 5 | `no_responsavel_envio` | `character varying(255)` | não |  |
| 6 | `nu_telefone` | `character varying(25)` | não |  |
| 7 | `ds_email` | `character varying(255)` | não |  |
| 8 | `ds_versao_sistema` | `character varying(30)` | não |  |
| 9 | `ds_banco_de_dados` | `character varying(30)` | não |  |

Referenciada por: `tb_dado_transp_recebido`
