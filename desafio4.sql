SELECT
	u.nome_usuario AS usuario,    
	IF(MAX(hr.data_reproducao) < '2020-12-31',
    'Usuário inativo',
    'Usuário ativo'
  ) AS status_usuario
FROM
SpotifyClone.tabela_usuario AS u 
INNER JOIN SpotifyClone.tabela_historico_de_reproducoes AS hr ON hr.usuario_id = u.usuario_id
GROUP BY usuario
ORDER BY usuario;