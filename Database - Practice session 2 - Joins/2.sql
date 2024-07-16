select 
c.name , 
c.email ,
 c.phone ,
 od.quantity ,
 o.orderdate,
 p.productname,
 p.price from 
 orderdetails od 
 left join products p on od.productid = p.productid
 left join orders o on od.orderid = o.OrderID
 left join customers c on o.CustomerID = c.CustomerID;