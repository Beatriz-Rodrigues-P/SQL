CREATE DATABASE db_colegio;

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
data_nascimento date,
ano_escolar varchar(255) not null,
media_final decimal(4,2),
primary key(id)
);

INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Samir', '2010-11-01', '1º Ano A do Ensino Médio', 6.45);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Júlia', '2010-08-29', '1º Ano B do Ensino Médio', 8.5);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Catarina', '2010-07-09', '1º Ano C do Ensino Médio', 10);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Ester', '2011-01-14', '1º Ano B do Ensino Médio', 9.25);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Leonardo', '2010-03-24', '1º Ano A do Ensino Médio', 4.15);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Bruna', '2010-09-07', '1º Ano C do Ensino Médio', 5.5);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Cleiton', '2010-4-20', '1º Ano B do Ensino Médio', 7.75);
INSERT INTO tb_alunos(nome, data_nascimento, ano_escolar, media_final)
VALUE ('Pedro', '2010-06-15', '1º Ano C do Ensino Médio', 8.0);

SELECT*FROM tb_alunos WHERE media_final>7.0;
SELECT*FROM tb_alunos WHERE media_final<7.0;

UPDATE tb_alunos SET media_final=6.0 WHERE id=1;

SELECT*FROM tb_alunos;