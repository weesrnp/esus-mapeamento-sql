# tb_integracao_horus

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_unidade_saude` | `bigint` | sim | PK |
| 2 | `dt_habilitar_integracao` | `timestamp with time zone` | não |  |
| 3 | `st_ativo` | `integer` | sim |  |
| 4 | `tp_erro_teste_horus` | `character varying(50)` | não |  |
| 5 | `co_unidade_saude_padrao` | `bigint` | não | FK → tb_unidade_saude |
