CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
data_nascimento date,
cargo varchar(255) not null,
departamento varchar(255) not null,
salario decimal(8,2),
primary key(id)
);

INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ('Alessandra Vespuccio', '1985-05-21', 'Analista de Marketing Sênior', 'Comunicação e marketing', 6500.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ('Josué Escolano', '1950-11-13', 'Diretor de TI', 'Tecnologia da Informação', 34500.50);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ('Andrei Bonfim', '2007-03-18', 'Estagiário de Recrutamento e Seleção', 'Recursos Humanos', 1300.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ('Olívia Monteiro', '1993-08-04', 'Coordenadora de Logística', 'Operações', 7300.75);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES ('Donizete Sabia', '1989-07-02', 'Representante Comercial Pleno', 'Vendas', 3500.85);

SELECT DATE_FORMAT (data_nascimento, '%d/%m/%Y') AS data_nascimento FROM tb_colaboradores;
SELECT*FROM tb_colaboradores WHERE salario>2000.00;
SELECT*FROM tb_colaboradores WHERE salario<2000.00;

UPDATE tb_colaboradores SET salario=3600.00 WHERE id=6;

DELETE FROM tb_colaboradores WHERE id=2;

SELECT*FROM tb_colaboradores;