DELIMITER $$
CREATE PROCEDURE complex_questionl(
IN OrderDate Date,
IN SupplierId int,
IN TotalAmount Decimal(10,2),
IN ProductId int,
in Quantity int,
in Unitprice decimal(10,2),
OUT new_order_id int)
BEGIN

insert into orders (OrderDate, SupplierID ,TotalAmount) 
values  (OrderDate, SupplierID , TotalAmount);
 set new_order_id=last_insert_id();
 
insert into orderitems (OrderId, ProductID, Quantity , UnitPrice)
Values(new_order_id , ProductID , Quantity , Unitprice);

select distinct s.supplierName ,s.contactName ,s.contactemail,o.orderdate,o.totalAmount,od.quantity
from suppliers s 
inner join products p on s.supplierid = p.supplierid
inner join orders o on p.supplierid = o.supplierid
inner join  orderitems  od on o.orderid = od.orderid
where o.orderid=new_order_id;

END $$
 
DELIMITER ;
