CREATE database db_ecommerce;

USE db_ecommerce;
CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome_produto VARCHAR(255) NOT NULL,
quantidade INT,
marca VARCHAR(255),
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD tipo VARCHAR(255) NOT NULL;

INSERT INTO tb_produtos(nome_produto, tipo, quantidade, marca, preco)
VALUES ("Tenis Adi200", "Tênis", 50, "Adidas", 799.99);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, tipo, quantidade, marca, preco)
VALUES ("Air Max 1 '87", "Tênis", 80, "Nike", 899.99),
 ("Tênis Suede Classic XXI", "Tênis", 140, "Puma", 449.90),
 ("Camiseta Vans Classica White", "Roupa", 500, "Vans", 99.99),
 ("Meia Cano Médio Preta", "Acessórios", 280, "Nike", 149.99),
 ("Pochete Ranger", "Acessórios", 50, "Vans", 219.99),
 ("Pochete Originals", "Acessórios", 60, "Adidas", 144.99),
 ("Superstar", "Tênis", 90, "Adidas", 499.99),
 ("Air Force 1", "Tênis", 40, "Nike", 799.99),
 ("Sk8-Hi Preto", "Tênis", 200, "Vans", 449.99),
 ("RS-X EFEKT", "Tênis", 80, "Puma", 699.99);
 
 SELECT * FROM tb_produtos;
 SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 200 WHERE id = 5;

 SELECT * FROM tb_produtos;