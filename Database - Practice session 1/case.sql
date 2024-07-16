select phone ,case 
when phone = '123-456-7890' then
'Yes'
else
'NO'
end
as Acceptance from customers;