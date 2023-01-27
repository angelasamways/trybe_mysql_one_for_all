SELECT
	FORMAT(MIN(tp.valor_plano), 2) AS faturamento_minimo,    
	FORMAT(MAX(tp.valor_plano), 2) AS faturamento_maximo,
	FORMAT(AVG(tp.valor_plano), 2) AS faturamento_medio,
	FORMAT(SUM(tp.valor_plano), 2) AS faturamento_total
FROM
SpotifyClone.tabela_plano AS tp
INNER JOIN SpotifyClone.tabela_usuario AS tu ON tp.plano_id = tu.plano_id;
