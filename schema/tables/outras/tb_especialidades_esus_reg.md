# tb_especialidades_esus_reg

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_espec_esus_reg` | `bigint` | sim | PK |
| 2 | `no_especialidade` | `character varying(255)` | sim |  |
| 3 | `no_especialidade_filtro` | `character varying(255)` | sim |  |
| 4 | `co_esus_regulacao` | `character varying(30)` | sim |  |
| 5 | `st_filtro_padrao` | `integer` | sim |  |
| 6 | `st_odontologico` | `integer` | sim |  |

Referenciada por: `tb_guia_encaminhamento`
