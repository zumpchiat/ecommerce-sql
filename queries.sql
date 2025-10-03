-- Lista todos os clientes com ordem e status confirmado
SELECT c.Fname, o.orderStatus FROM clients c, orders o WHERE c.id_Client = o.id_Order AND o.orderStatus = "Confirmado"; 

-- Lista todos os clientes com ordem
SELECT c.Fname, o.orderStatus FROM clients c, orders o WHERE c.id_Client = o.id_Order ;

-- Lista todos os clientes
SELECT * FROM clients c ;
