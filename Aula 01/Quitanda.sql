CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal,
primary key(id)
);

ALTER TABLE tb_produtos MODIFY preco decimal (6,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);
DESC tb_produtos;

ALTER TABLE tb_produtos CHANGE descricao descricao_produto varchar(500);
ALTER TABLE tb_produtos DROP descricao_produto;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2024-01-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2024-01-10", 8.00),
	("Pepino", 57, "2025-02-13", 9.50),
    ("Cenoura", 20, "2024-01-20", 7.00),
    ("Cebola", 60, "2024-03-07", 5.00),
    ("Repolho", 30, "2024-02-02", 3.00);

SELECT*FROM tb_produtos;
SELECT nome, preco FROM tb_produtos;
SELECT*FROM tb_produtos WHERE id=1;
SELECT*FROM tb_produtos WHERE preco>4.00;
SELECT*FROM tb_produtos WHERE preco>2.00 AND nome="Repolho";
SELECT*FROM tb_produtos WHERE preco>5.00 OR nome="Tomate";
SELECT*FROM tb_produtos WHERE nome!="Tomate";

SELECT nome AS Nome_completo,
CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_produtos;

SELECT nome, DATE_FORMAT (data_validade, '%d/%m/%Y') AS Data_validade FROM tb_produtos;

UPDATE tb_produtos SET preco=9.50 WHERE id=2;
UPDATE tb_produtos SET preco=9.50;

SQL_SAFE_UPDATES=1;

DELETE FROM tb_produtos WHERE id=2;
DELETE FROM tb_produtos WHERE id=3;