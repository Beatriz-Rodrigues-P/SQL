CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
desconto decimal(5,2) DEFAULT 0.00,
primary key(id)
);

INSERT INTO tb_categorias (tipo, desconto)
VALUES ('Medicamento', 10.00),('Suplemento', 5.00),
('Higiene', 0.50),('Cuidados pessoais', 2.00),
('Infantil', 15.00),('Cosméticos', 0.00),('Alimentos', 0.00);

SELECT*FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
data_validade date,
fabricante varchar(255) not null,
estoque int not null,
preco decimal (8,2) not null,
categorias_id bigint,
primary key(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, data_validade, fabricante, estoque, preco, categorias_id)
VALUES ('Carbolitium', '2026-01-09', 'Eurofarma Laboratórios S.A.', 32, 64.99, 1),
('CogMax', '2027-04-15', 'Eurofarma Laboratórios S.A.', 50, 155.00, 2),
('Alcool em gel', '2028-12-20', 'Giovanna Baby', 15, 34.70, 3),
('Creme dental', '2027-08-01', 'Colgate', 20, 23.99, 4),
('Fralda', '2028-05-30', 'Pampers', 8, 110.00, 5),
('Lenço umedecido', '2028-07-13', 'Mili S/A', 12, 25.00, 5),
('Creme noturno para rosto', '2026-03-21', 'Avon', 5, 64.50, 6),
('Isotônico', '2025-02-19', 'Gatorade', 3, 7.99, 7);

SELECT*FROM tb_produtos;

-- Desconto dos produtos
SELECT tb_produtos.*, (tb_produtos.preco-(tb_produtos.preco*tb_categorias.desconto/100)) 
AS preco_desconto FROM tb_produtos 
JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id;

SELECT*FROM tb_produtos WHERE preco>50.00;
SELECT*FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT*FROM tb_produtos WHERE nome LIKE '%C%';
SELECT @@collation_database;

SELECT*FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id=tb_categorias.id;

SELECT*FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id=tb_categorias.id
WHERE tb_categorias.tipo='Infantil';