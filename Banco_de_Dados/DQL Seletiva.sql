USE DevConnect;
GO

--Exiba todos os nomes dos seguidores de quem esta seguindo e de quem ser� seguido 
SELECT 
            u.nome_completo AS usuario_seguido,
            s.nome_completo AS usuario_seguidor
FROM        tb_seguidor sg
INNER JOIN  tb_usuario u    ON sg.usuarioid = u.id      -- usu�rio que est� sendo seguido
INNER JOIN  tb_usuario s    ON sg.seguidorid = s.id;   -- usu�rio que segue


--Exiba quantos seguidores possui um respectivo us�ario
SELECT 
           u.nome_completo AS usuario,
    COUNT (sg.seguidorid)  AS total_seguidores
FROM       tb_usuario u
LEFT JOIN  tb_seguidor sg  ON u.id = sg.usuarioid
GROUP BY   u.nome_completo;


--Exiba todas as publicacoes contendo a descricao, o caminho da imagem, o nome de us�ario
SELECT 
           p.descricao,
           p.imagem_url,
           u.nome_completo AS usuario
FROM       tb_publicacao p
INNER JOIN tb_usuario u ON p.usuarioid = u.id;


--Exiba todos os coment�rios com o nome e o texto de uma respectiva p�blicacao
SELECT 
           c.texto         AS comentario,
           u.nome_completo AS usuario,
           p.descricao     AS publicacao
FROM       tb_comentario c
INNER JOIN tb_usuario u    ON c.usuarioid = u.id
INNER JOIN tb_publicacao p ON c.publicacaoid = p.id;


--Exiba a quantidade de curtidas de um respectiva publicacao
SELECT 
          p.descricao AS publicacao,
          COUNT(c.id) AS total_curtidas
FROM      tb_publicacao p
LEFT JOIN tb_curtida c ON p.id = c.publicacaoid
GROUP BY  p.descricao;


--Exiba todos os us�arios que nao chegaram a fazer publicacoes
SELECT 
    u.nome_completo
FROM tb_usuario u
LEFT JOIN tb_publicacao p ON u.id = p.usuarioid
WHERE p.id IS NULL;


--Exiba todos us�arios que nao chegaram a fazer reacoes
SELECT 
    u.nome_completo
FROM tb_usuario u
LEFT JOIN tb_curtida c ON u.id = c.usuarioid
WHERE c.id IS NULL;