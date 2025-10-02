--DML

USE db_devconnect;

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha)
VALUES('matheus lima ferraz', 'anjinho', 'teteu@gmail.com', 244);

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao (descricao, data_publicacao, imagem_id)
values('i just need god','17/10/25', 'imagem');

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida(usuario_id, publicacao_id)
VALUES('anjinho', 'i just need god');


SELECT * FROM tb_curtida;

INSERT INTO tb_comentario(publicacao_ID, texto, data_comentario)
VALUES ('i just need god', 'futebol', '17/10/25');

SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor(usuario_seguidor)
VALUES ('_mts.zs');

SELECT * FROM tb_seguidor;