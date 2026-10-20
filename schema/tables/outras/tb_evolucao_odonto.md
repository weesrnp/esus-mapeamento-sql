# tb_evolucao_odonto

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_evolucao_odonto` | `bigint` | sim | PK |
| 2 | `tp_parte_bucal` | `bigint` | não | FK → tb_tipo_parte_bucal |
| 3 | `ds_parte_bucal` | `character varying(255)` | não |  |
| 5 | `co_atend_prof_odonto` | `bigint` | não | FK → tb_atend_prof_odonto |
| 6 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 7 | `ds_evolucao` | `text` | não |  |
| 8 | `ds_parte_bucal_filtro` | `character varying(255)` | não |  |

Referenciada por: `rl_evolucao_odonto_parte_bucal`, `rl_evolucao_odonto_proced`, `tb_tecido_mole`
