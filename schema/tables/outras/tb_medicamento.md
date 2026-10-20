# tb_medicamento

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_medicamento` | `bigint` | sim | PK |
| 2 | `no_principio_ativo` | `character varying(400)` | sim |  |
| 3 | `ds_concentracao` | `character varying(200)` | não |  |
| 4 | `co_forma_farmaceutica` | `bigint` | não | FK → tb_forma_farmaceutica |
| 5 | `ds_unidade_fornecimento` | `character varying(200)` | sim |  |
| 6 | `no_principio_ativo_filtro` | `character varying(600)` | não |  |

Referenciada por: `tb_medicamento_catmat`, `tb_medicamento_uso_continuo`, `tb_receita_medicamento`
