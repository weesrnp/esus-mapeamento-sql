# tb_estagio

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ator_papel` | `bigint` | sim | PK |
| 2 | `co_prof` | `bigint` | sim | FK → tb_prof |
| 3 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 4 | `co_equipe` | `bigint` | não | FK → tb_equipe |
| 5 | `co_lotacao_supervisora` | `bigint` | sim | FK → tb_lotacao |
| 6 | `st_nivel_tecnico` | `integer` | sim |  |
| 7 | `co_cbo` | `bigint` | sim | FK → tb_cbo |
| 8 | `dt_inicio_vigencia` | `date` | sim |  |
| 9 | `dt_fim_vigencia` | `date` | sim |  |
| 10 | `ds_instituicao_ensino` | `character varying(255)` | não |  |

Referenciada por: `tb_atend_prof`
