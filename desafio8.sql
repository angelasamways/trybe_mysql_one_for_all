SELECT
	art.nome_artista AS artista,    
	alb.nome_album AS album
FROM
	SpotifyClone.tabela_artista AS art
	INNER JOIN SpotifyClone.tabela_album AS alb ON alb.artista_id = art.artista_id
GROUP BY artista, album
HAVING nome_artista = 'Elis Regina'
ORDER BY album;
