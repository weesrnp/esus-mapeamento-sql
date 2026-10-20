# tb_prontuario_unidade_saude

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_prontuario_unidade_saud` | `bigint` | sim | PK |
| 2 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 3 | `co_cidadao` | `bigint` | sim |  |
| 4 | `nu_prontuario` | `character varying(30)` | sim |  |
