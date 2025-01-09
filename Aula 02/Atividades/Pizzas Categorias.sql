CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categorias (tipo)
VALUES ('Salgada');
INSERT INTO tb_categorias (tipo)
VALUES ('Doce');
INSERT INTO tb_categorias (tipo)
VALUES ('Vegetariana');
INSERT INTO tb_categorias (tipo)
VALUES ('Vegana');

SELECT*FROM tb_categorias;

CREATE TABLE tb_massas(
id bigint auto_increment,
massa varchar(255),
primary key(id)
);

INSERT INTO tb_massas (massa)
VALUES ('Tradicional');
INSERT INTO tb_massas (massa)
VALUES ('Fina');
INSERT INTO tb_massas (massa)
VALUES ('Grossa');

SELECT*FROM tb_massas;

CREATE TABLE tb_tamanhos(
id bigint auto_increment,
tamanho varchar(255),
primary key(id)
);

INSERT INTO tb_tamanhos (tamanho)
VALUES ('Broto - 6 pedaços');
INSERT INTO tb_tamanhos (tamanho)
VALUES ('Tradicional - 8 pedaços');
INSERT INTO tb_tamanhos (tamanho)
VALUES ('Grande - 10 pedaços');

SELECT*FROM tb_tamanhos;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
borda varchar(255),
ingredientes varchar(255),
preco decimal(6,2),
categorias_id bigint,
massas_id bigint,
tamanhos_id bigint,
primary key(id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id),
FOREIGN KEY(massas_id) REFERENCES tb_massas(id),
FOREIGN KEY(tamanhos_id) REFERENCES tb_tamanhos(id)
);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Frango', 'Cheddar', 'Frango e Catupiry', 55.50, 1, 3, 2);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Calabresa', 'Tradicional', 'Calabresa e cebola', 40.90, 1, 2, 3);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Brócolis', 'Catupiry', 'Brócolis e mussarela', 62.50, 3, 1, 1);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Berinjela', 'Tradicional', 'Berinjela e champignon', 67.90, 4, 2, 3);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Morango', 'Leite condensado', 'Morango e leite condensado', 62.50, 2, 3, 2);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('M&M', 'Tradicional', 'Chocolate e M&M ', 60.90, 2, 1, 1);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Toscana', 'Catupiry', 'Calabresa moída e mussarela', 48.50, 1, 2, 3);
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id, massas_id, tamanhos_id)
VALUES ('Brócolis especial', 'Tradicional', 'Brócolis, mussarela e bacon', 65.50, 1, 3, 2);

SELECT*FROM tb_pizzas;

SELECT CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_pizzas;
SELECT*FROM tb_pizzas WHERE preco>45.00;
SELECT*FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT*FROM tb_pizzas WHERE sabor LIKE '%M%';
SELECT @@collation_database;

SELECT*FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id=tb_categorias.id
INNER JOIN tb_massas
ON tb_pizzas.massas_id=tb_massas.id
INNER JOIN tb_tamanhos
ON tb_pizzas.tamanhos_id=tb_tamanhos.id;

SELECT*FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id=tb_categorias.id
INNER JOIN tb_massas
ON tb_pizzas.massas_id=tb_massas.id
INNER JOIN tb_tamanhos
ON tb_pizzas.tamanhos_id=tb_tamanhos.id
WHERE tb_categorias.tipo='Doce';