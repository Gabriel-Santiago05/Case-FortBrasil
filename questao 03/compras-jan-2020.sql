-- nomeei o database do case assim:
USE case_fb;

-- aqui seleciono os atributos exigisdos na questão
SELECT vd.ID_PESSOA, ps.NM_PESSOA, vd.VL_VENDA
FROM f_Vendas as vd

-- left join para juntar os resultados da tabela vendas com a tabela de pessoas

LEFT JOIN d_Pessoa as ps
ON (vd.ID_PESSOA = ps.ID_PESSOA)


-- left join para juntar os resultados da tabela gerada pelo joins passado com a tabela do tempo
LEFT JOIN d_Tempo as tp
ON (vd.ID_TEMPO = tp.ID_TEMPO)

-- último join e where para aplicar os filtros exigidos
LEFT JOIN d_Loja as lj
ON (vd.ID_LOJA = lj.ID_LOJA)
WHERE ( ( UPPER(lj.DS_UF) = "CE")  AND (EXTRACT(YEAR_MONTH FROM tp.DT_REF) = "202001" ) );
