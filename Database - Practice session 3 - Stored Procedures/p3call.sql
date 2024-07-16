set @new_order_id = 0;
call supplychaindb.complex_questionl('2024-09-2', 3, 10000, 4, 100, 12, @new_order_id);
select @new_order_id;
