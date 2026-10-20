# tb_justificativa_prontuario

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_justificativa_prontuar` | `bigint` | sim | PK |
| 2 | `dt_acesso_prontuario` | `timestamp with time zone` | sim |  |
| 3 | `ds_justificativa` | `character varying(1000)` | sim |  |
| 4 | `co_ator_papel` | `bigint` | não | FK → tb_ator_papel |
| 5 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 6 | `co_usuario` | `bigint` | não | FK → tb_usuario |
