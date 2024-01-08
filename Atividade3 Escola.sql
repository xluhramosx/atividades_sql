CREATE database db_Escola;
USE db_Escola;

CREATE TABLE tb_estudantes (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
idade INT,
série VARCHAR(255) NOT NULL,
notas DECIMAL(6,1) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, série, notas)
VALUES ("Enzo Gabriel Nunes", 10, "Quarta Série", 9.5),
("Valentina Ramos de Carvalho", 13, "Sétima Série", 6.5),
("Thomas Rafael dos Santos", 17, "Terceiro Ano", 8.7),
("Valentim Leite Ramalho", 8, "Segunda Série", 10.0),
("Miguel de Souza", 11, "Quinta Série", 3.8),
("Enzo Matheus dos Santos", 7, "Primeira Série", 9.3),
("Tais Tanaka", 10, "Quarta Série", 8.5),
("Lais Montilha", 15, "Primeiro Ano", 5.5),
("Thabatha Maria dos Anjos", 14, "Oitava Série", 4.7),
("Tomaz dos Santos Alvarenga", 9, "Terceira Série", 7.5),
("Enzo Migel Lucci", 14, "Oitava Série", 7.5);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE notas > 7.0;
SELECT * FROM tb_estudantes WHERE notas < 7.0;

UPDATE tb_estudantes SET notas = 4.5 WHERE id = 5;

SELECT * FROM tb_estudantes;
