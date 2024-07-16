set @newID=0;

CALL 	insert_suppliers('Supplier F','Surya','Surya@sample.com','9345276451',@newID);

select @newID as NewID;