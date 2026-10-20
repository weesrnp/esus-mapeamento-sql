-- titulo: Função PL/pgSQL no PostgreSQL
-- categoria: cadastro_e_territorio
-- tabelas: -
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: cria uma função (DDL): não roda em sessão somente leitura; rode num banco de apoio
-- status: revisar (funcao utilitaria plpgsql; ddl nao executavel em sessao somente leitura)

CREATE OR REPLACE FUNCTION fn_validar_cns(p_cns text) RETURNS boolean AS $$
DECLARE
    v_cns text;
    v_pis text;
    v_soma integer := 0;
    v_resto integer;
    v_dv integer;
    v_resultado text;
    i integer;
BEGIN
    v_cns := regexp_replace(p_cns, '[^0-9]', '', 'g');
    IF length(v_cns) <> 15 THEN
        RETURN FALSE;
    END IF;

    -- Base PIS (1 ou 2)
    IF substring(v_cns from 1 for 1) IN ('1', '2') THEN
        v_pis := substring(v_cns from 1 for 11);
        FOR i IN 1..11 LOOP
            v_soma := v_soma + (substring(v_pis from i for 1)::integer * (16 - i));
        END LOOP;
        v_resto := v_soma % 11;
        v_dv := 11 - v_resto;
        IF v_dv = 11 THEN v_dv := 0; END IF;
        IF v_dv = 10 THEN
            v_soma := v_soma + 2;
            v_resto := v_soma % 11;
            v_dv := 11 - v_resto;
            v_resultado := v_pis || '001' || v_dv::text;
        ELSE
            v_resultado := v_pis || '000' || v_dv::text;
        END IF;
        RETURN (v_cns = v_resultado);

    -- Provisório (7, 8 ou 9)
    ELSIF substring(v_cns from 1 for 1) IN ('7', '8', '9') THEN
        FOR i IN 1..15 LOOP
            v_soma := v_soma + (substring(v_cns from i for 1)::integer * (16 - i));
        END LOOP;
        RETURN (v_soma % 11 = 0);
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
