DELIMITER $$
Create procedure insert_suppliers
(
IN SupplierName VARCHAR(100),
IN ContactName VARCHAR(100),
IN ContactEmail VARCHAR(100),
IN ContactPhone VARCHAR(20),
OUT New_Supplier_id int)

BEGIN
insert into suppliers (suppliername ,
 contactName ,
 ContactEmail ,
 ContactPhone)
 values(SupplierName , ContactName , ContactEmail , ContactPhone);
 SET New_Supplier_id=last_insert_id();
 END $$
 DELIMITER ;

