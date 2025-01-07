CREATE DATABASE db_ecommerce;

CREATE TABLE tb_livros(
id bigint auto_increment,
titulo varchar(255) not null,
editora varchar(255) not null,
ano_edicao date,
genero varchar(255) not null,
preco decimal(6,2),
primary key(id)
);

INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Brazil', 'Teneues', '2024-01-09', 'História da Arte', 665.00);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Beusker', 'Teneues', '2023-07-03', 'Fotografia', 570.00);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Germany 1900: a Portrait in Color', 'Taschen', '2013-10-01', 'História da Arte', 650.00);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Box Harry Potter - Edição Pottermore', 'Rocco', '2011-02-23', 'Fantasia', 499.90);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Português Linguagens - Volume único', 'Atual Didáticos', '2017-12-07', 'Educação', 471.00);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Kelly Slater', 'Rizzoli', '2020-04-15', 'Esporte', 456.50);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('The Landscape of Home', 'Rizzoli', '2021-09-12', 'Arquitetura', 456.50);
INSERT INTO tb_livros(titulo, editora, ano_edicao, genero, preco)
VALUES ('Conecte Física - Volume 2', 'Saraiva Didáticos', '2010-03-25', 'Física', 459.00);

SELECT CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_livros;
SELECT DATE_FORMAT (ano_edicao, '%d/%m/%Y') AS ano_edicao FROM tb_livros;
SELECT*FROM tb_livros WHERE preco>500.00;
SELECT*FROM tb_livros WHERE preco<500.00;

UPDATE tb_livros SET preco=420.95 WHERE id=7;

SELECT*FROM tb_livros;