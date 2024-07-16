DELIMITER $$
CREATE PROCEDURE fetch_supplier1(
in product varchar(100))
begin
select s.supplierName,
s.contactname,
s.contactEmail from 
suppliers s inner join products p
on s.SupplierID = p.SupplierID
where p.ProductName=product ;

END $$
DELIMITER ;