use case_fb;
SELECT
	dp1.ID_PESSOA,
	tb.ID_PESSOA
FROM
	(SELECT 
		dp.ID_PESSOA
	FROM 
		f_Vendas fv
	JOIN d_pessoa as dp ON fv.ID_PESSOA = dp.ID_PESSOA
	JOIN d_Tempo as dt ON fv.ID_TEMPO = dt.ID_TEMPO
	WHERE 
		month(dt.dt_ref) = 03 AND 
		year(dt.dt_ref) = 2020
	GROUP BY 
		dp.ID_PESSOA) AS tb
RIGHT JOIN d_Pessoa dp1 ON dp1.ID_PESSOA = tb.ID_PESSOA
WHERE tb.id_pessoa IS NULL;
