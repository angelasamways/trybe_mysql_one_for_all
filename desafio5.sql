SELECT
	tc.nome_cancao AS cancao,    
	COUNT(hr.cancao_id) 
  AS reproducoes
FROM
SpotifyClone.tabela_cancoes AS tc
INNER JOIN SpotifyClone.tabela_historico_de_reproducoes AS hr ON hr.cancao_id = tc.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;