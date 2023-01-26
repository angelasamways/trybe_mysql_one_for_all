SELECT
	COUNT(DISTINCT s.cancao_id) AS cancoes,
  COUNT(DISTINCT ar.artista_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM
	SpotifyClone.tabela_cancoes AS s,
  SpotifyClone.tabela_artista AS ar,
  SpotifyClone.tabela_album AS al;