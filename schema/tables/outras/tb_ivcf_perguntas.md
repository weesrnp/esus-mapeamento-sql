# tb_ivcf_perguntas

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ivcfperguntas` | `bigint` | sim | PK |
| 2 | `no_pergunta` | `character varying(50)` | sim |  |
| 3 | `ds_pergunta` | `character varying(255)` | sim |  |

Referenciada por: `tb_ivcf_aplicacao`
