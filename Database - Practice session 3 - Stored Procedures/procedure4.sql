use supplychaindb;

DELIMITER $$
create procedure del_supplier(
in Supplier_id int)
begin

delete from suppliers where SupplierID=Supplier_id;

END $$

DELIMITER 

