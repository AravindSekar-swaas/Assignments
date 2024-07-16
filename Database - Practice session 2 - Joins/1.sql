select 
c.name , 
c.email ,
 c.phone ,
 od.quantity ,
 o.orderdate,
 p.productname,
 p.price from 
 orderdetails od 
 inner join products p on od.productid = p.productid
 inner join orders o on od.orderid = o.OrderID
 inner join customers c on o.CustomerID = c.CustomerID;