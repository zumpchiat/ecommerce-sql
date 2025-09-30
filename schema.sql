-- CREATE DATABASE E-COMMERCE

CREATE  DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- CREATE TABLE CLIENT
CREATE TABLE clients(
	id_Client INT AUTO_INCREMENT PRIMARY KEY,
	Fname VARCHAR(12),
	Lname VARCHAR(25),
	CPF CHAR(11) NOT NULL,
	ADDRESS VARCHAR(30),
	CONSTRAINT unique_cpf UNIQUE (CPF)
);

-- CREATE TABLE PRODUCT
CREATE TABLE product(
	id_Product INT AUTO_INCREMENT PRIMARY KEY,
	Pname VARCHAR(15),
	classification_kids BOOL,
	category ENUM('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') NOT NULL ,
	avaliation FLOAT DEFAULT 0,
	size VARCHAR(10)
	
);

-- CREATE TABLE ORDERS
CREATE TABLE orders(
	id_Order INT AUTO_INCREMENT PRIMARY KEY,
	id_OrderClient INT,
	orderStatus ENUM('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    orderDescription VARCHAR(255),
    sendValue FLOAT DEFAULT 10,
    paymentCash BOOL DEFAULT FALSE,
    CONSTRAINT fk_orders_client FOREIGN KEY  (id_OrderClient) REFERENCES clients(id_Client)
			ON UPDATE CASCADE
);













