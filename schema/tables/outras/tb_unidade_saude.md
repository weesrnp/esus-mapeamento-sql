# tb_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `nu_licenca_funcionamento` | `character varying(20)` | não |  |
| 2 | `tp_unidade_saude` | `bigint` | não | FK → tb_tipo_unidade_saude |
| 3 | `co_seq_unidade_saude` | `bigint` | sim | PK |
| 4 | `nu_cnes` | `character varying(20)` | não |  |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `nu_cnpj` | `character varying(14)` | não |  |
| 7 | `no_unidade_saude` | `character varying(255)` | não |  |
| 8 | `no_unidade_saude_filtro` | `character varying(255)` | não |  |
| 9 | `nu_telefone_comercial` | `character varying(255)` | não |  |
| 10 | `nu_telefone_comercial2` | `character varying(255)` | não |  |
| 11 | `nu_telefone_fax` | `character varying(255)` | não |  |
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
| 24 | `co_subtp_unidade_saude` | `bigint` | não | FK → tb_subtipo_unidade_saude |
| 25 | `st_cnes_reset` | `integer` | não |  |

Referenciada por: `rl_cds_prontuario_unidade_saud`, `rl_unidade_saude_complexidade`, `rl_unidade_saude_horus`, `rl_unidade_saude_tipo_servico`, `tb_atend`, `tb_atividade_coletiva`, `tb_cds_cad_individual`, `tb_config_painel_unidade_saude`, `tb_cuidado_compartilhado`, `tb_cuidado_compartilhado_evol`, `tb_dispositivo_painel`, `tb_equipe`, `tb_estagio`, `tb_grupo_part_ativ_col`, `tb_imunobiologico_lote`, `tb_integracao_horus`, `tb_lista_espera`, `tb_lotacao`, `tb_lotacao_env_unificacao_base`, `tb_prontuario_unidade_saude`, `tb_sala_unidade_saude`, `tb_vinculacao_servico`
