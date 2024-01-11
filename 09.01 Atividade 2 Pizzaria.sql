DROP DATABASE db_pizzaria_legal;
DROP TABLE tb_categoria;
DROP TABLE tb_pizza;
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    categoria_pizza VARCHAR(50) NOT NULL
);
SELECT*FROM tb_categorias;

INSERT INTO tb_categorias (id_categoria, categoria_pizza)
VALUES(1, 'Salgada'),
    (2, 'Doce');
SELECT*FROM tb_categorias;

CREATE TABLE tb_pizzas (
    id_pizza INT auto_increment,
    sabor VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_pizza),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
SELECT*FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, valor, tamanho, id_categoria)
VALUES ("Calabresa", 39.99, "Grande", "1"),
("Margherita", 59.99, "Grande", "1"),
("Brigadeiro", 49.99, "Broto", "2"),
("Peito de Peru", 69.99, "Grande", "1"),
("Romeu e Julieta", 49.99, "Broto", "2"),
("Quatro Queijos", 79.99, "Grande", "1"),
("Frango com Catupiry", 49.99, "Grande", "1"),
("Nutella", 79.99, "Broto", "2");
SELECT*FROM tb_pizzas;
SELECT*FROM tb_pizzas WHERE valor > 45.00;
SELECT*FROM  tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT*FROM  tb_pizzas WHERE sabor LIKE "%M%";

SELECT*FROM  tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.categoria_pizza = "Doce";
