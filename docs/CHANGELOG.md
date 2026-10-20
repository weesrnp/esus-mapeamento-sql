# Histórico de alterações

## 2026-10-20 — consultas revisadas

19 das 30 consultas retiradas voltaram ao catálogo, que passa a ter 41. As outras 11 eram duplicadas ou estavam fora do escopo e foram apagadas.

- Regras conferidas com as notas metodológicas do Ministério da Saúde: C1 (demanda programada sobre o total, parâmetro em sino), C3 prática A, C4 (6 boas práticas), C7 prática A, B3 (Ótimo de 3% a menos de 10%), M1 (média de atendimentos por pessoa atendida pela eMulti) e dimensão Cadastro do vínculo.
- Pessoa casada por `co_cidadao`, CPF ou CNS em todas as listas e indicadores, como no C3 e no C5.
- Bolsa Família: o arquivo importado é casado com o cidadão por NIS, CPF ou CNS, conforme o tipo do documento.
- Janelas por parâmetro (`:ini`, `:fim`); nenhuma data fixa nem `CURRENT_DATE`.
- Saídas sem endereço, telefone, nome da mãe ou NIS; CPF e CNS mascarados.
- Tipo de demanda, desfecho de visita e tipo de saída do cadastro lidos pela descrição da dimensão, porque o código muda entre versões.
- As 19 passam no `EXPLAIN` no PostgreSQL 16 e no 9.6, ambos só com o esquema do PEC 5.5.28.
- `validate_sql.py` ganhou amostras para `:'nu_ine'` e `:pessoas_parametro`.

## 2026-10-20 — primeira versão pública

Validado contra o schema oficial do PEC 5.5.28 (PostgreSQL 16, banco sem dados) e contra uma instalação em produção (PostgreSQL 9.6), só com `EXPLAIN`.

### Esquema
- Mapa regenerado do PEC 5.5.28: 1.180 tabelas e 6 visões materializadas (antes, 642 tabelas). Entraram as `tl_` (histórico Envers), `ta_` (auditoria) e `rl_` (relacionamentos).
- Saíram 8 visões que existiam só numa instalação (`stg_*`, `vw_*`). O extrator agora usa só os prefixos oficiais e limpa a pasta gerada antes de regravar.

### Consultas
- O catálogo ficou com 22 consultas. Todas passam no `EXPLAIN` no PostgreSQL 9.6 e 16; a função `fn_validar_cns` foi testada com CNS definitivos e provisórios.
- 30 consultas saíram para revisão: 12 não rodavam (coluna inexistente) e as demais tinham regra de indicador errada, dado pessoal sem máscara ou eram duplicadas.
- CPF e CNS mascarados nas buscas ativas; endereço, telefone e nome da mãe retirados da saída.
- Parâmetros de INE entre aspas (`:'ine_1'`).
- Cada consulta com problema conhecido traz a linha `-- limitacoes:` no cabeçalho.

### Scripts
- `validate_sql.py` lê a conexão só do ambiente, aceita senha com caracteres especiais, valida também as consultas marcadas para revisão e embute as visões definidas no repositório.
- `build_graph.py` não depende mais de objetos de apoio fixos.

### Testes
- Rodam num clone limpo: os que precisam de banco, Node.js ou do arquivo de termos privados são pulados quando o recurso não existe.
- Novos testes: esquema só com objetos oficiais, embutimento de visões no `EXPLAIN` e validador sem leitura de arquivo de configuração.

### Documentação
- `armadilhas.md`: corrigido o item sobre óbito e mudança no cadastro individual; novos itens sobre pessoa com vários registros no DW, CID sem ponto, tabelas de histórico, aspas em parâmetros e PostgreSQL 9.6.
