select 
c.name,
c.email,
c.phone,
o.OrderDate
from customers c 
inner join orders o 
on c.customerid = o.customerid
where OrderDate='2024-07-02';
