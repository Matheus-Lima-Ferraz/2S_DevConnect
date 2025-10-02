--DDL
	CREATE DATABASE db_devconnect;

	USE db_devconnect

	CREATE TABLE tb_usuario(	
	id  INT IDENTITY(1, 1) PRIMARY KEY,
	nome_completo					NVARCHAR(255)						 NOT NULL,
	nome_usuario					NVARCHAR(255)		UNIQUE			 NOT NULL,
	email							NVARCHAR(150)                        NOT NULL,
	senha						    NVARCHAR(50)						 NOT NULL,
);

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
descricao					NVARCHAR(255)								NOT NULL,
imagem_id					NVARCHAR(150)								NOT NULL,
data_publicacao				DATE
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida(
usuario_id					NVARCHAR(150)						NOT NULL,
publicacao_id				NVARCHAR(150)						NOT NULL,
);

SELECT * FROM tb_curtida;

CREATE TABLE tb_comentario(
publicacao_id				NVARCHAR(150)							NOT NULL,
texto						NVARCHAR(150)							NOT NULL,
data_comentario				NVARCHAR(50)		UNIQUE				NOT NULL,
);

SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
usuario_seguidor			NVARCHAR(150)						NOT NULL,
);

SELECT * FROM tb_seguidor;

