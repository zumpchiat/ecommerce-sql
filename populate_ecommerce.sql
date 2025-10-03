use ecommerce;

-- POPULATE TABLE clients
INSERT INTO ecommerce.clients (Fname, Lname , CPF, ADDRESS ) VALUES
("Luiz Fernando", "Pastor", 47589263109, "Vila Julia Pires, 33 - Mato Grosso do Sul 05258-154"),
("Ester", "da Cruz", 23068514762, "Setor de da Cruz, 751 - Goiás 12642-367"),
("Gabrielly", "Novais", 85429706167, "Morro das Neves, 8 - São Paulo 34555976"),
("Erick", "Araújo", 14257380608, "Ladeira Cassiano - Rio Grande do Norte 63426353"),
("Maria Luiza", "Pinto", 65487201994, "Morro das Neves, 98 - Rondônia 12278-838"),
("Yan", "Siqueira", 19380265786, "Alameda de Pires, 53 - Mato Grosso 44361-665"),
("Rebeca", "Câmara", 43697815237, "Loteamento Macedo, 2 - Goiás 54095-024"),
("André", "Pastor", 07845196339, "Estrada Silva, 619 - Rio de Janeiro 06799326"),
("Jade", "Teixeira", 90316247804, "Trevo Gael Henrique Fernandes, 69 - Alagoas 60738997"),
("Bianca", "Silva", 54189072397, "Sítio Milena das Neves, 22 - Minas Gerais 01110291"),
("Amanda", "Rocha", 39140762599, "Rua da Cruz, 14 - Sergipe 73400379"),
("Olivia", "Barbosa", 12785406362, "Recanto da Mota, 739 - Rondônia 21551-885"),
("Luiz Miguel", "Cassiano", 13840956757, "Loteamento Fonseca, 8 - Acre 41572944"),
("Vitor", "Ramos", 81567203930, "Trecho Liz Sá, 7 - Mato Grosso 40235-702"),
("Josué", "da Luz", 81726935086, "Recanto Nunes - Rio Grande do Sul 18883-457"),
("Kevin", "Viana", 84153670235, "Favela de Carvalho, 11 - Goiás 22943-180"),
("Liam", "Costa", 96082175476, "Trecho Luan Rios, 44 - Rondônia 65516-348"),
("Lucca", "Silveira", 20395476143, "Setor de Casa Grande, 32 - Espírito Santo 53541-828"),
("Bernardo", "Aragão", 20156847949, "Esplanada Leão, 6 - Roraima 74672165"),
("Lorenzo", "Cunha", 08936145215, "Loteamento Mendes - Amazonas 33044-595")
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
	(3, "Confirmado", null , null, 1),
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





