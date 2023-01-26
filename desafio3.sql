SELECT
	usua.nome_usuario AS usuario,    
	COUNT(DISTINCT hr.cancao_id) AS qt_de_musicas_ouvidas,
	ROUND(SUM(can.duracao_segundos/60), 2) AS total_minutos
FROM
	SpotifyClone.tabela_usuario AS usua
    INNER JOIN SpotifyClone.tabela_historico_de_reproducoes AS hr ON hr.usuario_id = usua.usuario_id
    INNER JOIN SpotifyClone.tabela_cancoes AS can ON hr.cancao_id = can.cancao_id
GROUP BY nome_usuario;