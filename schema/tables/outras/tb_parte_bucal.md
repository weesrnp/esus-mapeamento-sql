# tb_parte_bucal

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_parte_bucal` | `bigint` | sim | PK |
| 2 | `tp_parte_bucal` | `character varying(60)` | não |  |
| 3 | `ds_parte_bucal` | `character varying(255)` | não |  |
| 4 | `ds_parte_bucal_filtro` | `character varying(255)` | não |  |

Referenciada por: `rl_evolucao_odonto_parte_bucal`, `tb_arcada`, `tb_dente`, `tb_parte_bucal_cid10`, `tb_parte_bucal_proced`, `tb_periograma_completo`, `tb_sextante`, `tb_tecido_mole`
