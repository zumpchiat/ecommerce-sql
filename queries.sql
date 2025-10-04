use ecommerce;

-- Lista todos os clientes com ordem e status confirmado
SELECT concat(c.Fname, " ", c.LName) as Cliente, 
				o.orderStatus as Status 
	FROM clients c, orders o 
		WHERE c.id_Client = o.id_Order AND o.orderStatus = "Confirmado"; 

-- Lista todos os clientes com ordem definido status Pedido aprovado ou Não aprovado 
SELECT concat(c.Fname," ", c.LName) as Cliente, 
	CASE o.orderStatus
		WHEN "Confirmado"  THEN 'PEDIDO APROVADO'
		WHEN "Cancelado"  THEN 'PEDIDO APROVADO'
		WHEN "Em processamento"  THEN 'PEDIDO APROVADO'		
		ELSE "PEDIDO NÂO APROVADO"
		END as Status
	FROM clients c, orders o 
		WHERE c.id_Client = o.id_Order 
			ORDER BY c.Fname ASC;

-- Lista Quantidade total de clientes com Pedido  
SELECT count(c.id_Client) as Total_Cliente 
	FROM clients c
		JOIN  orders o ON o.id_OrderClient = c.id_Client;

-- Lista Quantidade total de clientes com pedido confirmado 
SELECT count(c.id_Client) as Total_Cliente 
	FROM clients c
		JOIN  orders o ON o.id_OrderClient = c.id_Client
			WHERE o.orderStatus = "Confirmado";
		
-- Lista a quantidade de clientes por modalidade de compra
SELECT count(c.id_Client ) as Qtd_Clientes, o.orderDescription as Modalidade  
	FROM clients c
		JOIN orders o ON c.id_Client = o.id_OrderClient
		GROUP BY o.orderDescription 
		ORDER BY Qtd_Clientes DESC
		

-- Lista todos os cpf
SELECT * 
	FROM  ecommerce.natural_person 
		ORDER BY id_natural_person ;

-- Lista todos os clientes que possui cnpj ordenando por nome e exibindo Full Name, CNPJ e ADDRESS  
SELECT concat(Fname, " ",  Lname) as Cliente,lp.cnpj , ADDRESS as endereço 
	FROM ecommerce.clients c, legal_person lp  
		WHERE c.id_ClientCNPJ = lp.id_legal_person 
			ORDER BY Cliente ;

-- Lista todos os clientes que possui CPF ordenando por nome e exibindo Full Name, CPF e ADDRESS   
SELECT concat(Fname, " ",  Lname) as Cliente, np.cpf , ADDRESS as endereço 
	FROM ecommerce.clients c, natural_person np  
		WHERE c.id_ClientCPF = np.id_natural_person 
			ORDER BY Cliente ;



