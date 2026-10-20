-- titulo: Resumo Mensal de Visitas por ACS e Desfecho
-- categoria: cadastro_e_territorio
-- tabelas: tb_dim_cbo, tb_dim_equipe, tb_dim_profissional, tb_fat_visita_domiciliar
-- parametros: dt_fim, dt_inicio
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: desfecho da visita por id fixo da dimensão (1/2/3); só CBO 515105 (TACS 322255 fica de fora); agrupa pelo nome do ACS

-- Parâmetros: :dt_inicio (YYYYMMDD), :dt_fim (YYYYMMDD)
SELECT 
    dp.no_profissional AS no_acs,
    de.no_equipe,
    COUNT(vd.co_seq_fat_visita_domiciliar) AS total_visitas,
    COUNT(CASE WHEN vd.co_dim_desfecho_visita = 1 THEN 1 END) AS visitas_realizadas,
    COUNT(CASE WHEN vd.co_dim_desfecho_visita = 2 THEN 1 END) AS visitas_recusadas,
    COUNT(CASE WHEN vd.co_dim_desfecho_visita = 3 THEN 1 END) AS visitas_ausente,
    ROUND((COUNT(CASE WHEN vd.co_dim_desfecho_visita = 1 THEN 1 END)::numeric / NULLIF(COUNT(vd.co_seq_fat_visita_domiciliar), 0)::numeric) * 100, 1) AS taxa_efetividade_pct
FROM tb_fat_visita_domiciliar vd
JOIN tb_dim_profissional dp ON vd.co_dim_profissional = dp.co_seq_dim_profissional
JOIN tb_dim_equipe de ON vd.co_dim_equipe = de.co_seq_dim_equipe
JOIN tb_dim_cbo cbo ON vd.co_dim_cbo = cbo.co_seq_dim_cbo
WHERE vd.co_dim_tempo BETWEEN :dt_inicio AND :dt_fim
  AND cbo.nu_cbo = '515105' -- CBO ACS
GROUP BY dp.no_profissional, de.no_equipe
ORDER BY de.no_equipe, total_visitas DESC;
