CREATE database db_RH;
USE db_RH;

CREATE TABLE tb_colaboradores (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
idade INT,
setor VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, setor, cargo)
VALUES ("Valeria Nunes de Carvalho", 35, "RH", "Gerente de Recrutamento e Seleção"),
("Thomas Miller", 19, "Marketing", "Estagiário"),
("Marina Moreira", 25, "TI", "Desenvolvedora Front-End Jr"),
("Cauê Siqueira de Carvalho", 33, "TI", "Desenvolvedor Full-Stack Senior"),
("Maurício Monteiro Jr", 38, "Diretoria", "Diretor de Comunicação"),
("Gustavo Silas Serafim", 36, "TI", "PO"),
("Vera Lucia Ramos", 45, "Financeiro", "Analista Senior de Contabilidade");

SELECT * FROM tb_colaboradores;
ALTER TABLE tb_colaboradores ADD salario DECIMAL NOT NULL;
SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 4500.00 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 2365.00 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 6800.00 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 6000.00 WHERE id = 5;
UPDATE tb_colaboradores SET salario = 10500.00 WHERE id = 6;
UPDATE tb_colaboradores SET salario = 5300.00 WHERE id = 7;

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1856.80 WHERE id = 2;

SELECT * FROM tb_colaboradores;