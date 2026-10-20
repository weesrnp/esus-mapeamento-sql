# Armadilhas do banco do e-SUS PEC

Pontos que costumam gerar número errado. Vale conferir antes de publicar um indicador.

1. **Datas como inteiro.** `co_dim_tempo` guarda `YYYYMMDD` (ex.: `20260825`). Filtre com `BETWEEN 20260101 AND 20260831`. Converter a coluna com `TO_DATE` no `WHERE` impede o uso do índice.
2. **Explosão de linhas entre subfatos.** Juntar `tb_fat_atendimento_individual` com `tb_fat_atd_ind_procedimentos`, `tb_fat_atd_ind_medicamentos` e `tb_fat_atd_ind_problemas` no mesmo nível multiplica as linhas (N × M × K). Agregue cada subfato numa CTE por pessoa e junte o resultado.
3. **Carga em duas fases.** Dimensões como `tb_dim_equipe` e `tb_dim_vinculacao_equipes` entram com `st_registro_valido = NULL` e viram `1` no processamento noturno. Em relatórios oficiais, ignore `NULL` e `0`.
4. **Identificador `1` nas dimensões** significa "não informado". Use `LEFT JOIN` para não perder atendimentos com atributo secundário em branco.
5. **Cadastro individual guarda histórico.** `tb_fat_cad_individual` não tem `st_faleceu` nem `st_mudou_se`. Pegue a ficha mais recente por cidadão (`DISTINCT ON ... ORDER BY co_dim_tempo DESC`) e só depois descarte quem saiu (`co_dim_tipo_saida_cadastro`) ou tem ficha inativa (`st_ficha_inativa = 1`). Filtrar a saída antes de escolher a ficha faz uma ficha antiga reaparecer. Óbito: `tb_fat_cidadao_pec.st_faleceu` ou `tb_cidadao.st_faleceu`.
6. **Procedimento com dois códigos.** Vários procedimentos aparecem como código SIGTAP ou como código da ficha (CDS). Inclua os dois no filtro.
7. **Agendado × espontâneo.** Tipos de atendimento agendado e espontâneo ficam em valores diferentes de `co_dim_tipo_atendimento`; confirme os códigos na dimensão da sua versão antes de fixar a lista.
8. **Deduplicação de pessoa.** Use o CPF como chave; sem CPF, o CNS definitivo. `co_fat_cidadao_pec` é a chave substituta do cidadão no DW.
9. **Visitas de ACS.** Para indicadores que exigem visita, duas visitas ao mesmo cidadão só contam com intervalo mínimo de 30 dias.
10. **Dose aplicada × transcrita.** `st_registro_anterior = 0` é dose aplicada na unidade; `1` é transcrição de caderneta anterior. Ambas valem para cobertura, só a primeira conta como produção.
11. **Vigência de CBO.** Algumas ocupações só passam a contar para um indicador a partir de uma data de portaria. Compare a data do atendimento com a vigência.
12. **Escrita em produção.** Nunca escreva no banco do PEC. Use papel de leitura, `default_transaction_read_only = on` e `statement_timeout = 30000`.
13. **Uma pessoa, vários registros no DW.** A mesma pessoa pode ter mais de uma linha em `tb_fat_cidadao_pec` (registros sem `co_cidadao`, só com CNS ou CPF). Casar fatos por um único `co_fat_cidadao_pec` dá falso positivo na busca ativa e infla denominador. Monte um mapa de ids por `co_cidadao`, CPF ou CNS, como fazem os indicadores C3 e C5 deste repositório.
14. **CID sem ponto.** `tb_cid10.nu_cid10` é gravado sem ponto (`E110`, não `E11.0`).
15. **Tabelas `tl_` e `ta_` são histórico.** `tl_*` guarda cada revisão de uma `tb_*` (Envers: `co_revisao`, `co_tipo_revisao`) e `ta_*` é trilha de auditoria por trigger. Para o dado vigente, leia a `tb_*`; ler o log traz linhas repetidas e registros excluídos.
16. **Parâmetro de texto no psql vai com aspas.** `:ine_1` vira número e um INE como `0000123456` perde os zeros; use `:'ine_1'`. Datas `YYYYMMDD` comparadas com `co_dim_tempo` ficam sem aspas.
17. **PostgreSQL 9.6.** Muitas instalações ainda rodam 9.6. Dentro de CTE com `UNION`, dê tipo a literal de texto (`'x'::text`); evite recursos de versões novas (`GENERATED`, SQL/JSON path).

## Padrão para evitar a explosão de linhas

```sql
WITH proc AS (
    SELECT co_fat_atd_ind, COUNT(*) AS qt_proc
    FROM tb_fat_atd_ind_procedimentos
    GROUP BY co_fat_atd_ind
),
prob AS (
    SELECT co_fat_atd_ind, COUNT(*) AS qt_prob
    FROM tb_fat_atd_ind_problemas
    GROUP BY co_fat_atd_ind
)
SELECT ai.co_seq_fat_atd_ind,
       COALESCE(proc.qt_proc, 0) AS qt_proc,
       COALESCE(prob.qt_prob, 0) AS qt_prob
FROM tb_fat_atendimento_individual ai
LEFT JOIN proc ON proc.co_fat_atd_ind = ai.co_seq_fat_atd_ind
LEFT JOIN prob ON prob.co_fat_atd_ind = ai.co_seq_fat_atd_ind
WHERE ai.co_dim_tempo BETWEEN :dt_inicio AND :dt_fim;
```

Confira os nomes de coluna de ligação em [schema/tables](../schema/tables/fatos/) para a sua versão.
