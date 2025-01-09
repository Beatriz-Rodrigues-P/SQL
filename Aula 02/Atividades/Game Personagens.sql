CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
funcao varchar(255) not null,
habilidade varchar(255) not null,
primary key(id)
);

INSERT INTO tb_classes (funcao, habilidade)
VALUES ('Atiradora', 'Pontaria'); 
INSERT INTO tb_classes (funcao, habilidade)
VALUES ('Lutadora', 'Força bruta');
INSERT INTO tb_classes (funcao, habilidade)
VALUES ('Espadachim', 'Agilidade');
INSERT INTO tb_classes (funcao, habilidade)
VALUES ('Espiã', 'Furtividade');
INSERT INTO tb_classes (funcao, habilidade)
VALUES ('Médica', 'Curandeira');

SELECT*FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
idade varchar(255) not null,
nacionalidade varchar(255) not null,
historia_de_vida varchar (255) not null,
poder_ataque int,
poder_defesa int,
classes_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Letícia Braga', '25', 'Brasileira', 'Uma ex-policial que virou atiradora após perder sua família para a milícia carioca.', 2500, 1500, 1);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Natalia Romanova', '28', 'Russa', 'Ex-agente secreta que luta para desmantelar a organização criminosa que a torturou.', 2800, 1800, 4);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Priya Kapoor', '38', 'Indiana', 'Priya é uma médica talentosa que cresceu em uma aldeia rural na Índia. Inspirada pelo trabalho humanitário de seus pais, ela dedicou sua vida a ajudar os mais necessitados em regiões carentes.', 1300, 1000, 5);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Mei Ling', '23', 'Chinesa', 'Mestre de artes marciais em busca de vingança pelo assassinato de sua esposa.', 2300, 1700, 2);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Zola Ntuli', '27', 'Sul-Africana', 'Zola cresceu em uma cidade costeira na África do Sul. Inspirada pelas artes marciais tradicionais, ela se tornou uma lutadora que combina técnicas ancestrais com estratégias modernas para promover a justiça.', 2850, 2300, 2);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Amina Nyambura', '32', 'Queniana', 'Médica dedicada a ajudar refugiados, inspirada pela perda de sua melhor amiga.', 1110, 998, 5);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Amunet Shai', '45', 'Egípcia', 'Guardiã de um templo sagrado, treinada desde criança nas artes da espada.', 2100, 1900, 3);
INSERT INTO tb_personagens (nome, idade, nacionalidade, historia_de_vida, poder_ataque, poder_defesa, classes_id)
VALUES ('Ivana Petrović', '40', 'Croata', 'Ivana é uma espadachim de Dubrovnik, protegendo sua cidade com coragem e habilidades excepcionais.', 2750, 2000, 3);

SELECT*FROM tb_personagens;

SELECT*FROM tb_personagens WHERE poder_ataque>2000;
SELECT*FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT*FROM tb_personagens WHERE nome LIKE '%C%';
SELECT @@collation_database;

-- União das tabelas
SELECT*FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id=tb_classes.id;

-- União das duas tabelas com foco em função "Médica"
SELECT*FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id=tb_classes.id
WHERE tb_classes.funcao='Médica';