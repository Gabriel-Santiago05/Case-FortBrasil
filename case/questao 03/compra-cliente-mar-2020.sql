USE case_fb;

SELECT vd.ID_PESSOA, COUNT(vd.ID_PESSOA) AS COMPRAS_MES
FROM f_Vendas AS vd
LEFT JOIN d_Tempo AS tp
ON (vd.ID_TEMPO = tp.ID_TEMPO)
WHERE ( EXTRACT(YEAR_MONTH FROM tp.DT_REF) = "202003" )
GROUP BY (vd.ID_PESSOA);
