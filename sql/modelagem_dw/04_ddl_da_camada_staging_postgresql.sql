-- titulo: DDL da Camada Staging (Procedimentos de Saúde Bucal e Última Ficha de Cadastro Individual)
-- categoria: modelagem_dw
-- tabelas: tb_dim_procedimento, tb_dim_tipo_saida_cadastro, tb_fat_atend_odonto_proced, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: criar num banco ou esquema analítico próprio (réplica); nunca no banco de produção do PEC
-- limitacoes: visão não recebe parâmetro: a 2ª mostra o estado atual e não serve para o MICI de um quadrimestre passado (use indicadores_cofinanciamento/09); só códigos SIGTAP

-- Duas visões de apoio. O PEC recria o próprio esquema a cada atualização (Liquibase): objeto criado lá some ou quebra
-- a migração. Rode numa réplica ou num banco analítico que leia o DW.

-- 1. Procedimentos odontológicos individuais com o código normalizado (sem ponto e hífen) e marcadores dos indicadores B.
--    Exodontia permanente = numerador do B3 (SIGTAP 0414020138, 0414020146).
CREATE OR REPLACE VIEW stg_saude_bucal_procedimentos AS
SELECT p.co_seq_fat_atend_odonto_proced AS id_procedimento,
       p.co_fat_atd_odnt AS id_atendimento_odonto,
       p.co_fat_cidadao_pec,
       p.co_dim_profissional_1 AS co_dim_profissional,
       p.co_dim_cbo_1 AS co_dim_cbo,
       p.co_dim_unidade_saude_1 AS co_dim_unidade_saude,
       p.co_dim_equipe_1 AS co_dim_equipe,
       p.co_dim_tempo,
       coalesce(p.qt_procedimentos, 1) AS qt_procedimentos,
       d.co_proced,
       regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') AS co_proced_normalizado,
       d.ds_proced,
       regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') IN ('0414020138', '0414020146') AS st_exodontia_permanente,
       regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') = '0414020120' AS st_exodontia_deciduo,
       regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') = '0307010074' AS st_tra_art
FROM tb_fat_atend_odonto_proced p
JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento;

-- 2. Última ficha de cadastro individual por pessoa (co_cidadao do DW; sem co_cidadao, o próprio registro), escolhida
--    ANTES de olhar saída e inativação (armadilha 5). Quem tem a última ficha com saída (óbito, mudança) ou inativa fica
--    marcado, não some: filtrar antes do DISTINCT ON faria uma ficha antiga e válida reaparecer.
--    Não tem data de corte: é o retrato de hoje. Registro sem co_cidadao (só CPF/CNS) não se junta à pessoa (armadilha 13).
CREATE OR REPLACE VIEW stg_ultima_ficha_cadastro_individual AS
SELECT u.pessoa, u.co_cidadao, u.co_fat_cidadao_pec, u.id_ultima_ficha, u.co_dim_tempo, u.co_dim_equipe, u.nu_micro_area,
       lower(coalesce(s.ds_dim_tipo_saida_cadastro, '')) ~ '(bito|mudan)' AS st_saiu,
       coalesce(u.st_ficha_inativa, 0) = 1 AS st_ficha_inativa,
       coalesce(u.st_recusa_cadastro, 0) = 1 AS st_recusa
FROM (
    SELECT DISTINCT ON (coalesce('c' || c.co_cidadao, 'r' || f.co_fat_cidadao_pec))
           coalesce('c' || c.co_cidadao, 'r' || f.co_fat_cidadao_pec) AS pessoa, c.co_cidadao,
           f.co_fat_cidadao_pec, f.co_seq_fat_cad_individual AS id_ultima_ficha, f.co_dim_tempo, f.co_dim_equipe,
           f.nu_micro_area, f.co_dim_tipo_saida_cadastro, f.st_ficha_inativa, f.st_recusa_cadastro
    FROM tb_fat_cad_individual f
    JOIN tb_fat_cidadao_pec c ON c.co_seq_fat_cidadao_pec = f.co_fat_cidadao_pec
    ORDER BY coalesce('c' || c.co_cidadao, 'r' || f.co_fat_cidadao_pec), f.co_dim_tempo DESC, f.co_seq_fat_cad_individual DESC
) u
LEFT JOIN tb_dim_tipo_saida_cadastro s ON s.co_seq_dim_tipo_saida_cadastro = u.co_dim_tipo_saida_cadastro;
