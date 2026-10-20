# tb_recebimento_validacao_erros

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_receb_item` | `bigint` | sim |  |
| 2 | `ds_erro` | `text` | não |  |
| 3 | `ds_erro_campo_nao_preenchido` | `text` | não |  |
| 4 | `ds_erro_campo_invalido` | `text` | não |  |
| 5 | `nu_registro_da_ficha` | `smallint` | não |  |
| 6 | `co_seq_receb_valid_erro` | `bigint` | sim | PK |
