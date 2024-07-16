select 
c.name , 
c.email ,
 c.phone ,
 od.quantity ,
 o.orderdate,
 p.productname,
 p.price from 
 orderdetails od 
 right outer join products p on od.productid = p.productid
 right outer join orders o on od.orderid = o.OrderID
 right outer join customers c on o.CustomerID = c.CustomerID;