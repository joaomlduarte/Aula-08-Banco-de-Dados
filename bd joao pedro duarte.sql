create database gestaovendas;
use gestaovendas;

CREATE TABLE Cliente (
cliente_id INT PRIMARY KEY,
nome VARCHAR(100),
cpf CHAR(11),
email VARCHAR(100),
telefone VARCHAR(15)
);
CREATE TABLE Produto (
produto_id INT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2),
estoque INT
);
CREATE TABLE Vendedor (
vendedor_id INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
salario DECIMAL(10,2)
);
CREATE TABLE Venda (
venda_id INT PRIMARY KEY,
cliente_id INT,
vendedor_id INT,
data_venda DATE,
total DECIMAL(10,2),
FOREIGN KEY (cliente_id) REFERENCES 
Cliente(cliente_id),
FOREIGN KEY (vendedor_id) REFERENCES 
Vendedor(vendedor_id)
);
CREATE TABLE ItemVenda (
item_id INT PRIMARY KEY,
venda_id INT,
produto_id INT,
quantidade INT,
preco_unitario DECIMAL(10,2),
FOREIGN KEY (venda_id) REFERENCES 
Venda(venda_id),
FOREIGN KEY (produto_id) REFERENCES 
Produto(produto_id)
);

INSERT INTO
cliente(cliente_id, nome, cpf, email, telefone)
VALUES ("1234", "João Pedro", "1234", "joao1234@gmail.com", "1234");

INSERT INTO cliente VALUES
("5678", "Luiz", "5678", "luiz5678@gmail.com", "5678",),
("8910", "Marcos", "8910", "marcos8910@gmail.com", "8910"),
("1112", "Moisés", "1112", "moises1112@gmail.com", "1112"),
("1314", "Murilo", "1314", "murilo1314@gmail.com", "1314"),
("1516", "Leonardo", "1516", "leonardo1516@gmail.com", "1516");

ALTER TABLE cliente
add salario VARCHAR(15);
SELECT * FROM CLIENTE;

select * from cliente;

UPDATE `gestaovendas`.`cliente` SET `salario` = '2500' WHERE (`cliente_id` = '1112');
UPDATE `gestaovendas`.`cliente` SET `salario` = '1250' WHERE (`cliente_id` = '1234');
UPDATE `gestaovendas`.`cliente` SET `salario` = '6580' WHERE (`cliente_id` = '1314');
UPDATE `gestaovendas`.`cliente` SET `salario` = '1250' WHERE (`cliente_id` = '1516');
UPDATE `gestaovendas`.`cliente` SET `salario` = '520' WHERE (`cliente_id` = '5678');
UPDATE `gestaovendas`.`cliente` SET `salario` = '1500' WHERE (`cliente_id` = '8910');


DESCRIBE cliente;

INSERT INTO cliente VALUES
("5678", "Luiz", "5678", "luiz5678@gmail.com", "5678")







