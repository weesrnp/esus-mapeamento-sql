# tb_alergia

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_alergia` | `bigint` | sim | PK |
| 2 | `co_categoria_agente_causador` | `bigint` | não | FK → tb_categoria_agente_causador |
| 3 | `no_substancia_especifica` | `character varying(300)` | não |  |
| 5 | `co_ultima_alergia_evolucao` | `bigint` | não | FK → tb_alergia_evolucao |
| 6 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 7 | `co_unico_alergia` | `bigint` | não |  |
| 8 | `co_substancia_especifica` | `bigint` | não | FK → tb_substancia_espec_alergia |
