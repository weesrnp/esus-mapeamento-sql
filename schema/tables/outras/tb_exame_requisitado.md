# tb_exame_requisitado

Tipo: tabela  
Grupo: outras  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_requisitado` | `bigint` | sim | PK |
| 2 | `st_conferido` | `integer` | não |  |
| 3 | `dt_resultado` | `timestamp without time zone` | não |  |
| 4 | `co_atend_prof_solicitacao` | `bigint` | não | FK → tb_atend_prof |
| 5 | `co_proced` | `bigint` | não | FK → tb_proced |
| 6 | `co_requisicao_exame` | `bigint` | não | FK → tb_requisicao_exame |
| 7 | `co_atend_prof_resultado` | `bigint` | não | FK → tb_atend_prof |
| 8 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 9 | `dt_realizacao` | `timestamp without time zone` | não |  |
| 10 | `dt_solicitacao` | `timestamp without time zone` | não |  |
| 11 | `co_proced_exame_especifico` | `bigint` | não | FK → tb_proced_exame_especifico |
| 12 | `ds_resultado` | `text` | não |  |
| 13 | `ds_observacao` | `character varying(300)` | não |  |
| 14 | `co_arquivo_atendprof` | `bigint` | não | FK → rl_arquivo_atendprof |

Referenciada por: `tb_exame_clearance_creatina`, `tb_exame_colesterol_hdl`, `tb_exame_colesterol_ldl`, `tb_exame_colesterol_total`, `tb_exame_creatina_serica`, `tb_exame_detalhe_resultado`, `tb_exame_hemoglobina_glicada`, `tb_exame_prenatal`, `tb_exame_puericultura`, `tb_exame_triglicerideos`, `tb_regulacao`, `tb_resultado_exm_qualitativo`
