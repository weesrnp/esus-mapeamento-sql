# tb_agendamento_visita_imovel

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_agendamento_visita` | `bigint` | sim | PK |
| 2 | `dt_visita_marcada` | `date` | sim |  |
| 3 | `co_profissional` | `bigint` | sim | FK → tb_prof |
| 4 | `co_domicilio` | `bigint` | sim | FK → tb_cds_domicilio |
