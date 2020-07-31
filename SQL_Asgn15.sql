1) Assume there is a table called Multicust, with all of the same 
column definitions as Salespeople.
 Write a command that inserts all salespeople
 with more than one customer into this table. ;
 
 
create table Multicust as select * from salespeople
 where snum in (select snum from customers group by snum having count(snum)>1);
 


 2) Write a command that deletes all customers with no current orders.;

 
 delete customers WHERE cnum =any 
 (select cnum from orders where cnum not in (select cnum from customers));


 
 3) Write a command that increases by twenty percent the commissions of 
	all salespeople with total orders above Rs. 3,000;
   

    update salespeople set comm = comm + 0.20 where snum = any(select snum from orders where amt>3000 ); 