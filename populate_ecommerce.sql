use ecommerce;

-- POPULATE TABLE NATURAL PERSON
INSERT INTO ecommerce.natural_person (cpf) VALUES
	(50872914658),
	(32861950498),
	(89654102315),
	(54682097300),
	(89526401794),
	(64807953184),
	(53762184062),
	(50397824114),
	(40835697193),
	(81230475923)
;

select * from natural_person;

-- POPULATE TABLE LEGAL PERSON
INSERT INTO ecommerce.legal_person (cnpj ,SocialName ) VALUES
	("85.392.140/0001-05", "productize world-class portals "),
	("37.912.584/0001-81", "target user-centric functionalities "),
	("37.268.540/0001-60", "synergize interactive applications "),
	("74.351.029/0001-54", "iterate proactive solutions "),
	("12.467.095/0001-37", "evolve robust portals "),
	("30.869.247/0001-00", "monetize revolutionary functionalities "),
	("64.015.389/0001-21", "enhance out-of-the-box bandwidth "),
	("79.504.862/0001-01", "evolve efficient e-commerce "),
	("09.863.724/0001-33", "reinvent ubiquitous action-items "),
	("98.164.732/0001-11", "productize clicks-and-mortar networks ")
;


-- POPULATE TABLE clients
INSERT INTO ecommerce.clients (Fname, Lname , id_ClientCNPJ, id_ClientCPF, ADDRESS ) VALUES
("Luiz Fernando", "Pastor",null, 1,"Vila Julia Pires, 33 - Mato Grosso do Sul 05258-154"),
("Ester", "da Cruz", null, 2, "Setor de da Cruz, 751 - Goiás 12642-367"),
("Gabrielly", "Novais", null,  3, "Morro das Neves, 8 - São Paulo 34555976"),
("Erick", "Araújo", null, 4, "Ladeira Cassiano - Rio Grande do Norte 63426353"),
("Maria Luiza", "Pinto", null, 5, "Morro das Neves, 98 - Rondônia 12278-838"),
("Yan", "Siqueira", null, 6, "Alameda de Pires, 53 - Mato Grosso 44361-665"),
("Rebeca", "Câmara",null, 7, "Loteamento Macedo, 2 - Goiás 54095-024"),
("André", "Pastor",null, 8, "Estrada Silva, 619 - Rio de Janeiro 06799326"),
("Jade", "Teixeira",null, 9, "Trevo Gael Henrique Fernandes, 69 - Alagoas 60738997"),
("Bianca", "Silva",null, 10, "Sítio Milena das Neves, 22 - Minas Gerais 01110291"),
("Manuela", "Barros", 1, null, "Esplanada Cirino, 5 - Rondônia 83772-769"),
("Daniela", "Andrade", 2, null, "Loteamento Silveira, 989 - Pernambuco 63287-467"),
("Davi Miguel", "da Rosa", 3, null, "Área Barros, 49 - Rio Grande do Norte 77550-286"),
("Rodrigo", "Vasconcelos", 4, null, "Travessa Bárbara Novaes, 52 - Espírito Santo 26525-893"),
("Mariah", "Gomes", 5, null, "Lago de da Conceição, 35 - São Paulo 52873-161"),
("Arthur", "da Conceição", 6, null, "Sítio Pietra Vasconcelos, 1 - Espírito Santo 40770149"),
("Pedro Henrique", "Novaes", 7, null, "Lagoa Sales, 318 - Goiás 69099276"),
("Eduarda", "Pereira", 8, null, "Distrito Campos, 29 - Minas Gerais 06933-909"),
("Ana Liz", "Mendes", 9, null, "Vereda Catarina da Costa, 595 - Amazonas 90105259"),
("Manuella", "Pacheco", 10, null, "Viela Correia, 72 - Ceará 47024453")
;

-- POPULATE TABLE product
INSERT INTO ecommerce.product (Pname , classification_kids , category , avaliation ,`size` ) VALUES 
	("Fone de ouvido", false, "Eletrônico", "4", null),
	("Boneca Elsa", true, "Brinquedos", "3", null),
	("Body Carters", true, "Vestimenta", "5", null),
	("Microfone vedo", false, "Eletrônico", "4", null),
	("Sofá retrátil", false, "Móveis", "3", "3x57x80"),
	("Farinha de arroz", false, "Alimentos", "2", null),
	("Fire strick Amazon", false, "Eletrônico", "3", null)
;

-- POPULATE TABLE orders
INSERT INTO ecommerce.orders (id_OrderClient , orderStatus , orderDescription ,sendValue ,paymentCash) VALUES
	(1, null, "Compra via aplicativo", null, 1),
	(2, null, "Compra via aplicativo", 50, 0),
	(3, "Confirmado", "Loja" , null, 1),
	(4, null, "Compra via site", 150, 0)
;

-- POPULATE TABLE productOrder
INSERT INTO ecommerce.productOrder (id_POproduct , id_POorder , poQuantity , poStatus ) VALUES 
	(1, 1, 2, null),
	(2, 1, 1, null),
	(3, 2, 1, null)
;

-- POPULATE TABLE productStorage
INSERT INTO ecommerce.productStorage (storageLocation ,quantity ) VALUES 
	("Rio de Janeiro", 1000),
	("Rio de Janeiro", 500),
	("São Paulo", 10),
	("São Paulo", 100),
	("São Paulo", 10),
	("Minas Gerais", 60)
;

-- POPULATE TABLE storeagelocation
INSERT INTO ecommerce.storeagelocation (id_Lproduct ,id_Lstorage ,location ) VALUES
	(1, 2, "RJ"),
	(2, 6, "GO")
;

-- POPULATE TABLE supplier
INSERT INTO ecommerce.supplier (SocialName , CNPJ , contact ) VALUES 
	('Almeida e filhos', 123456789123456,'21998547476'),
	('Eletrônicos Silva',854519649143457,'21991185484'),
	('Eletrônicos Valma', 934567893934695,'21997543444')
;

-- POPULATE TABLE productSupplier
INSERT INTO ecommerce.productSupplier (id_PsProduct ,id_PsSupplier ,Quantity ) VALUES 
	(1,1,500),
	(1,2,400),
	(2,3,633),
	(3,3,5),
	(2,2,10)
;

-- POPULATE TABLE seller
INSERT INTO ecommerce.seller (SocialName, AbstName, CNPJ, CPF, location, contact) VALUES 
	('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
	('Kids World',null,456789123654485,null,'São Paulo', 1198657484)
;

-- POPULATE TABLE productSeller
INSERT INTO ecommerce.productSeller (id_Pseller, id_Pproduct, prodQuantity) VALUES 
	(1,3,80),
	(2,6,10)
;

-- POPULATE TABLE payments
INSERT INTO ecommerce.payment (id_Payment ,typePayment ,limitAvailable ) VALUES 
	(1, "Boleto", null),
	(3, "Cartão", null)
;

