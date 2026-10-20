# tb_atend_prof_odonto

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_atend_prof_odonto` | `bigint` | sim | PK |
| 2 | `tp_consulta_odonto` | `bigint` | não | FK → tb_tipo_consulta_odonto |
| 3 | `ds_observacao_rpc` | `character varying(400)` | não |  |

Referenciada por: `rl_atend_prof_odonto_tipo_encm`, `rl_atend_prof_odonto_tipo_frnc`, `tb_evolucao_odonto`, `tb_odontograma`, `tb_periograma_completo`, `tb_periograma_simplificado`, `tb_tecido_mole`
