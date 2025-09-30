-- CREATE DATABASE E-COMMERCE

CREATE  DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- CREATE TABLE CLIENT
CREATE TABLE ecommerce.clients(
	id_Client INT AUTO_INCREMENT PRIMARY KEY,
	Fname VARCHAR(12),
	Lname VARCHAR(25),
	CPF CHAR(11) NOT NULL,
	ADDRESS VARCHAR(30),
	CONSTRAINT unique_cpf UNIQUE (CPF)
);



-- CREATE TABLE PAYMENT
CREATE TABLE ecommerce.payment(
	id_Payment INT,
	typePayment ENUM('Boleto', 'Cartão', 'Dois Cartões'),
	limitAvailable FLOAT,
	PRIMARY KEY (id_Payment)
);

-- CREATE TABLE ORDERS
CREATE TABLE ecommerce.orders(
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


-- CREATE TABLE PRODUCT
CREATE TABLE ecommerce.product(
	id_Product INT AUTO_INCREMENT PRIMARY KEY,
	Pname VARCHAR(15),
	classification_kids BOOL,
	category ENUM('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') NOT NULL ,
	avaliation FLOAT DEFAULT 0,
	size VARCHAR(10)
	
);






-- CREATE TABLE ESTOQUE
CREATE TABLE ecommerce.productStorage(
	id_ProductStorage INT AUTO_INCREMENT PRIMARY KEY,
	storageLocation VARCHAR(255),
    quantity INT DEFAULT 0
);

-- CREATE TABLE FORNECEDOR
CREATE TABLE ecommerce.supplier(
	id_Supplier INT AUTO_INCREMENT PRIMARY KEY,
	SocialName VARCHAR(255) NOT NULL,
	CNPJ CHAR(15) NOT NULL,
	contact CHAR(11) NOT NULL,
	CONSTRAINT unique_supplier UNIQUE (CNPJ)
);

-- CREATE TABLE VENDEDOR
CREATE TABLE ecommerce.seller(
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
CREATE TABLE ecommerce.productSeller(
	id_PSeller INT,
	id_PProduct INT,
	prodQuantity INT DEFAULT 1,
	PRIMARY KEY (id_PSeller, id_PProduct),
	CONSTRAINT fk_product_seller FOREIGN KEY (id_PSeller) REFERENCES seller(id_Seller),
	CONSTRAINT fk_product_product FOREIGN KEY (id_PProduct) REFERENCES product (id_Product)
	
);

-- RELATION N:N PRODUCT x FORNECEDOR
CREATE TABLE ecommerce.productSupplier(
	id_PsSupplier INT,
	id_PsProduct INT,
	Quantity INT NOT NULL,
	PRIMARY KEY (id_PsSupplier, id_PsProduct ),
	CONSTRAINT fk_product_supplier_supplier FOREIGN KEY (id_PsSupplier) REFERENCES supplier(id_Supplier),
	CONSTRAINT fk_product_supplier_product FOREIGN KEY (id_PsProduct) REFERENCES product(id_Product)
	
);

-- RELATION N:N ESTOQUE X PRODUTO
CREATE TABLE ecommerce.storeagelocation(
	id_Lproduct INT,
	id_Lstorage INT,
	location VARCHAR(255) NOT NULL,
	PRIMARY KEY (id_Lproduct, id_Lstorage),
	CONSTRAINT fk_storage_location_product FOREIGN KEY (id_Lproduct) REFERENCES product(id_Product),
	CONSTRAINT fk_storage_location_storage FOREIGN KEY (id_Lstorage) REFERENCES productStorage(id_ProductStorage)
);      							              


-- RELATION N:N PRODUTO X PEDIDO
CREATE TABLE ecommerce.productOrder(
	id_POproduct INT,
    id_POorder INT,
    poQuantity INT DEFAULT 1,
    poStatus ENUM('Disponivel',  'Sem Estoque') DEFAULT 'Disponivel',
    PRIMARY KEY (id_POproduct, id_POorder),
    CONSTRAINT fk_productOrder_seller FOREIGN KEY (id_POproduct) REFERENCES product(id_Product),
    CONSTRAINT fk_productOrder_product FOREIGN KEY (id_POorder) REFERENCES orders(id_Order)
);




