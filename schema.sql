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

-- CREATE TABLE PAYMENT
CREATE TABLE payment(
	id_Payment INT,
	typePayment ENUM('Boleto', 'Cartão', 'Dois Cartões'),
	limitAvailable FLOAT,
	PRIMARY KEY (id_Payment)
);,

-- CREATE TABLE ORDERS
CREATE TABLE orders(
	id_Order INT AUTO_INCREMENT PRIMARY KEY,
	id_OrderClient INT,
	id_OrderPayment INT,
	orderStatus ENUM('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    orderDescription VARCHAR(255),
    sendValue FLOAT DEFAULT 10,
    paymentCash BOOL DEFAULT FALSE,
    CONSTRAINT fk_payment_order FOREIGN KEY (id_OrderPayment) REFERENCES payment(id_Payment),
    CONSTRAINT fk_orders_client FOREIGN KEY (id_OrderClient) REFERENCES clients(id_Client)
			ON UPDATE CASCADE		
	
);

-- CREATE TABLE ESTOQUE
CREATE TABLE productStorege(
	id_ProductStorege INT AUTO_INCREMENT PRIMARY KEY,
	storageLocation VARCHAR(255),
    quantity INT DEFAULT 0
);

-- CREATE TABLE FORNECEDOR
CREATE TABLE supplier(
	id_Supplier INT AUTO_INCREMENT PRIMARY KEY,
	SocialName VARCHAR(255) NOT NULL,
	CNPJ CHAR(15) NOT NULL,
	contact CHAR(11) NOT NULL,
	CONSTRAINT unique_supplier UNIQUE (CNPJ)
);

-- CREATE TABLE VENDEDOR
CREATE TABLE seller(
	id_Seller INT AUTO_INCREMENT PRIMARY KEY,
	SocialName VARCHAR(255) NOT NULL,
	abstName VARCHAR(255),
	CNPJ CHAR(15),
    CPF CHAR(9),
    location VARCHAR(255),
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
	
);


-- RELATION N:N PRODUTO X VENDEDOR
CREATE TABLE productSeller(
	id_PSeller INT,
	id_PProduct INT,
	prodQuantity INT DEFAULT 1,
	PRIMARY KEY (id_PSeller, id_PProduct),
	CONSTRAINT fk_product_seller FOREIGN KEY (id_PSeller) REFERENCES seller(id_Seller),
	CONSTRAINT fk_product_product FOREIGN KEY (id_PProduct) REFERENCES product (id_Product)
	
);












