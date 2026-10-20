# tb_grau_certeza_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grau_certeza_alergia` | `bigint` | sim | PK |
| 2 | `no_grau_certeza_alergia` | `character varying(15)` | sim |  |
| 3 | `no_identificador` | `character varying(15)` | sim |  |

Referenciada por: `tb_alergia_evolucao`
