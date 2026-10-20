# tb_qst_questionario

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_qst_questionario` | `bigint` | sim | PK |
| 2 | `ds_questionario` | `character varying(255)` | não |  |
| 3 | `st_ativo` | `integer` | não |  |
| 4 | `tp_qst_questionario` | `integer` | não | FK → tb_qst_tipo_questionario |
| 5 | `nu_idade_meses_limite_inferior` | `integer` | não |  |
| 6 | `nu_idade_meses_limite_superior` | `integer` | não |  |

Referenciada por: `tb_marcador_consumo_alimentar`, `tb_qst_questionario_pergunta`, `tb_qst_questionario_respondido`
