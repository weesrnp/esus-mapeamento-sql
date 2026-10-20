# tb_periodo_ausencia

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_periodo_ausencia` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 3 | `dt_ausencia` | `date` | sim |  |
| 4 | `dt_retorno` | `date` | não |  |
