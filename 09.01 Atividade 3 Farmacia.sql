DROP DATABASE db_farmacia_bem_estar;
DROP TABLE tb_categorias;
DROP TABLE tb_produtos;

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
   id_categoria INT,
    nome_categoria VARCHAR(255) NOT NULL,
    tipo_categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_categoria)
);
SELECT*FROM tb_categorias;

INSERT INTO tb_categorias (id_categoria, nome_categoria, tipo_categoria)
VALUES(1, "Medicamentos", "Genérico"),
    (2, "Higiene Pessoal", "Marca"),
    (3, "Vitaminas", "Genérico"),
    (4, "Suplementos", "Marca");
SELECT*FROM tb_categorias;

CREATE TABLE tb_produtos (
    id_produto INT auto_increment,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT,
    id_categoria INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
SELECT*FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, quantidade, id_categoria)
VALUES ("Aspirina", 9.47, 300, 1 ),
("Shampoo Dove", 33.49, 50, 2 ),
("Vitamina C", 24.93, 247, 3 ),
("Creatina Hardcore", 46.41, 33, 4 ),
("Sabonete Johnson Baby ", 52.99, 800, 2 ),
("Paracetamol", 8.56, 345, 1 ),
("Multivitamínico 60", 19.99, 22, 3 ),
("Whey Protein", 88.99, 10, 4 );
SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE preco > 50.00;
SELECT*FROM  tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT*FROM  tb_produtos WHERE nome LIKE "%C%";

SELECT*FROM  tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = "Suplementos";