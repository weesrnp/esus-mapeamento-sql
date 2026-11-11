# O que muda no banco com o PEC 5.6.1

A versão 5.6.1 do e-SUS APS PEC (build de 03/11/2026) leva o banco da migração 5.5.28 até a 5.5.35. Este documento junta o que muda para quem lê o banco: o que foi renomeado, o que saiu e o que entrou. A lista saiu das migrações Liquibase do próprio instalador e foi conferida num banco criado do zero com o migrador oficial da 5.6.1.

Para quem ainda está na 5.5.28, a versão anterior do mapa e das consultas continua disponível na release [v1.0.0](https://github.com/weesrnp/esus-mapeamento-sql/releases/tag/v1.0.0).

## Antes de atualizar: o que quebra

**A tabela de vinculados mudou de nome.** Na migração 5.5.32, `tb_acomp_cidadaos_vinculados` passou a se chamar `tb_ods_cidadaos_vinculados`. As colunas continuam as mesmas, menos `st_reprocessar_vinculo`, que saiu na 5.5.30 e virou a fila `tb_acomp_cidadaos_vinc_pend`. Qualquer consulta, painel ou BI que lia a tabela antiga para de funcionar depois da atualização. Neste repositório, 17 das 41 consultas usavam esse nome e já foram ajustadas.

A tabela de controle do processamento também mudou: `tb_acomp_cidadaos_vinc_prcs` agora é `tb_etl_cidadaos_vinc_prcs`.

**Tabelas de relatórios operacionais apagadas (5.5.32).** Se algum relatório seu lê uma destas, ele vai falhar:

| Tabela removida |
|---|
| `tb_fat_rel_op_crianca` |
| `tb_fat_rel_op_risco_cardio` |
| `tb_fat_familia_territorio` |
| `tb_fat_cidadao_territorio` |
| `tb_fat_consolidado_cidadao_fvd` |
| `tb_fat_consolidado_cidadao_fci` |
| `tb_fat_consolidado_cidadao_fai` |
| `tb_fat_cnslddo_ciddo_fai_cid` |

**Colunas removidas (5.5.32):** `st_proc_operacionais` em `tb_fat_cad_domiciliar` e em `tb_fat_cad_individual`, `st_processado_origem_fcd` em `tb_fat_visita_domiciliar`, e `st_teste_orelhinha` e `st_teste_olhinho` em `tb_fat_consolidado_cidadao_fp`.

## O que entrou

### Fato unificada de problemas e condições

`tb_fat_problema_condicao` (5.5.32) junta numa tabela só os problemas e condições registrados no atendimento individual, no odontológico e no domiciliar. É uma linha por evolução de cada problema, por fonte.

- `co_tipo_fonte` diz de onde veio a linha: 1 = atendimento individual, 2 = odontológico, 3 = domiciliar. `co_fat_atendimento` aponta para o atendimento na tabela de origem e é lido conforme essa fonte.
- `nu_uuid_problema` acompanha o mesmo problema ao longo do tempo, e `co_sequencial_evolucao` dá a ordem das evoluções.
- Já vêm desnormalizados `nu_ciap`, `nu_cid`, `nu_identificador_situacao` (0 = ativo, 1 = latente), `nu_cbo`, `nu_cns` e `nu_cpf_cidadao`, além das chaves para as dimensões de tempo, CIAP, CID, situação, CBO, equipe, profissional e unidade.
- `co_fat_cidadao_pec` pode ficar nulo até o ETL resolver a referência do cidadão. Trate isso ao juntar com outras tabelas.

As tabelas antigas (`tb_fat_atd_ind_problemas` e as equivalentes do odontológico e do domiciliar) continuam no banco.

### Data marts por linha de cuidado

São tabelas pré-calculadas pelo ETL do PEC (5.5.32), uma linha por cidadão (`co_fat_cidadao_pec`), menos `tb_mrt_vacina`, que tem uma linha por dose.

| Tabela | O que guarda |
|---|---|
| `tb_mrt_condicoes_saude` | Base por cidadão: últimos atendimentos (médico, enfermagem, odonto), última visita, último peso, altura e pressão, vigência do Bolsa Família e marcadores `st_` de cada linha de cuidado |
| `tb_mrt_gestante_puerpera` | DUM, DPP cronológica e ecográfica, desfecho, fim do puerpério, consultas nas primeiras 12 semanas, pré-natal, odonto e puerpério, medições, testes de sífilis, HIV e hepatites por trimestre, visitas do ACS. A 5.5.35 acrescentou `nu_idade_gestacional_desfecho` |
| `tb_mrt_diabetes` | Última hemoglobina glicada (valor, data do exame e da solicitação), avaliação dos pés, consultas e visitas em 36 meses |
| `tb_mrt_hipertensao` | Consultas, aferições de pressão e visitas em 36 meses |
| `tb_mrt_idoso` | Resultado do IVCF-20 e de cada item, medições de peso e altura em 12 meses, visitas em 36 meses |
| `tb_mrt_desenv_infantil` | Primeira consulta, consultas e medições até 24 meses, visitas, suplementação de vitamina A por faixa etária |
| `tb_mrt_saude_bucal` | Primeira consulta, tratamento concluído, ART, escovação supervisionada, procedimentos preventivos, exodontias |
| `tb_mrt_saude_mulher` | Testes de HIV, sífilis e hepatites, solicitação e avaliação de exames do colo do útero e de mama |
| `tb_mrt_vacina` | Doses aplicadas por imunobiológico, com ordem da dose e data |

Os marts ajudam a montar painéis rápidos, mas seguem a regra de cálculo do próprio PEC. Para os indicadores do cofinanciamento, compare o resultado com a nota metodológica antes de trocar uma consulta por um mart.

### Busca ativa de vacinação

As seis visões materializadas de busca ativa (`mv_busca_ativa_vacina_*`) foram apagadas e recriadas na 5.5.32 com o mesmo nome. Entrou uma sétima, `mv_busca_ativa_vacina_gest_mrt`, para gestantes e puérperas a partir do mart.

### Outras tabelas novas

| Tabela | Versão | Para que serve |
|---|---|---|
| `tb_acomp_cidadaos_vinc_pend` | 5.5.30 | Fila de cidadãos com vínculo pendente de reprocessamento |
| `tb_errata_nota_complementar` | 5.5.32 | Errata e nota complementar de atendimentos |
| `tb_tipo_documento_cidadao` e `tb_cidadao_grupo_historico` | 5.5.34 | Histórico de documentos desvinculados de cidadãos |
| `tb_agendamento_visita_imovel` | 5.5.35 | Agendamento de visita domiciliar a imóveis |

Colunas novas: `co_familia` em `tb_cidadao_nucleo_familiar` (5.5.35), `st_habilitado_sinan` (5.5.34) e `st_habilitado_esus_regulacao` (5.5.35) em `tb_cfg_certificado`.

## O que está no instalador, mas não vem ativado

O instalador da 5.6.1 traz migrações para e-SUS Regulação (`tb_solicitacao_esus_reg` e relacionadas), notificação ao SINAN (`tb_notificacao_sinan` e relacionadas), polígonos e camadas do território (`tb_poligono_territorio`, `tb_geojson_*`) e CID-11 no plano do SOAP (`rl_evolucao_plano_cid11`). Elas ficam na pasta `next` do Liquibase e só rodam com contextos experimentais (`apiEsusRegulacao`, `apiSinan`, `mapaTerritorio`, `cid11Mtc` e outros). A configuração padrão usa `spring.liquibase.contexts=prod`, e a integração com o e-SUS Regulação vem desligada (`esus-regulacao.enabled=false`). Num banco atualizado do jeito normal essas tabelas não existem, por isso ficaram fora do mapa.

## Novidades de uso da versão 5.6

Estas vêm das notas que o próprio PEC mostra depois da atualização:

- M-CHAT-R/F completo na puericultura, com a entrevista de seguimento e o histórico de resultados.
- Risco cardiovascular em cinco faixas (baixo, moderado, alto, muito alto e extremo) no atendimento.
- Retificação de procedimentos e de vacinas: editar ou remover um registro do prontuário, com rastro na auditoria.
- Requisição de citopatológico e de mamografia direto do plano do SOAP.
- Relatório de cadastro individual com a opção de agrupar por pessoas ou por registros, e exportação em CSV.

## Como foi conferido

1. As migrações das versões 5.5.30, 5.5.32, 5.5.33, 5.5.34 e 5.5.35 foram lidas uma a uma, seguindo os `include` do `changelog-master.yaml`.
2. Um PostgreSQL 9.6 vazio recebeu o migrador oficial da 5.6.1 (`migrador.jar`), do mesmo jeito que numa instalação nova.
3. O esquema desse banco foi extraído com `scripts/extract_schema.py` e as 41 consultas passaram pelo `scripts/validate_sql.py`.
