SELECT
	art.nome_artista AS artista,    
	alb.nome_album AS album,
	COUNT(seg.artista_id) AS seguidores
FROM
SpotifyClone.tabela_artista AS art
INNER JOIN SpotifyClone.tabela_album AS alb ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.tabela_seguindo_artistas AS seg ON seg.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;