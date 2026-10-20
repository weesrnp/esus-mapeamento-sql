# tb_prof

Tipo: tabela  
Grupo: outras  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_prof` | `bigint` | sim | PK |
| 2 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 3 | `co_uf_emissora_conselho_classe` | `bigint` | não | FK → tb_uf |
| 4 | `co_conselho_classe` | `bigint` | não | FK → tb_conselho_classe |
| 5 | `nu_cpf` | `character varying(11)` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
| 8 | `no_profissional_filtro` | `character varying(600)` | não |  |
| 10 | `dt_nascimento` | `date` | não |  |
| 11 | `nu_telefone` | `character varying(255)` | não |  |
| 12 | `ds_email` | `character varying(255)` | não |  |
| 13 | `ds_cep` | `character varying(8)` | não |  |
| 14 | `ds_complemento` | `character varying(50)` | não |  |
| 15 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 16 | `ds_logradouro` | `character varying(150)` | não |  |
| 17 | `co_uf` | `bigint` | não | FK → tb_uf |
| 18 | `co_localidade_endereco` | `bigint` | não | FK → tb_localidade |
| 19 | `nu_numero` | `character varying(20)` | não |  |
| 20 | `st_sem_numero` | `integer` | não |  |
| 21 | `no_bairro` | `character varying(255)` | não |  |
| 22 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 23 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 24 | `co_usuario` | `bigint` | não | FK → tb_usuario |
| 25 | `no_sexo` | `character varying(24)` | não |  |
| 26 | `no_social_profissional` | `character varying(255)` | não |  |
| 27 | `no_civil_profissional` | `character varying(255)` | não |  |

Referenciada por: `rl_prof_municipio`, `tb_arquivo`, `tb_atestado_modelo`, `tb_ativacao_agendamento_online`, `tb_ator_papel`, `tb_cuidado_compartilhado`, `tb_estagio`, `tb_historico_unificacao`, `tb_importacao_bolsa_familia`, `tb_importacao_cnes`, `tb_lembrete`, `tb_lotacao`, `tb_prof_historico_cns`
