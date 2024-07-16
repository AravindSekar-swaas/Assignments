select 
c.name,
c.email,
c.phone,
p.productname,
od.Quantity
from customers c 
inner join orders o 
on c.customerid = o.customerid
inner join orderdetails od on o.orderid = od.orderid
inner join products p on od.productid = p.productid
where od.Quantity=(select max(Quantity) from orderdetails);