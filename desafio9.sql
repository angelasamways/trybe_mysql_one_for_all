SELECT
	COUNT(hr.usuario_id) AS quantidade_musicas_no_historico    
FROM
	SpotifyClone.tabela_historico_de_reproducoes AS hr
	INNER JOIN SpotifyClone.tabela_usuario AS us ON us.usuario_id = hr.usuario_id
GROUP BY hr.usuario_id
HAVING usuario_id = 1;