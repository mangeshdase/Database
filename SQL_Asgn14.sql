﻿1) Write a command that puts the following values,
 in their given order, into the salespeople table:
city – San Jose, sname – Blanco, comm – NULL, snum – 1100.;


 insert into salespeople(city, sname, comm, snum) values('San Jose','Blanco',null,1100.0);
 


 2) Write a command that removes all orders from customer Clemens from the Orders table. ;
 
select* from orders;
delete  from orders where cnum in(select cnum from customers where cname='Clemens');





3) Write a command that increases the rating of all customers in Rome by 100.; 

update customers set rating = rating +100 where city='Rome';



4) Salesperson Serres has left the company. Assign her customers to Motika;


update customers set snum = (select snum from salespeople where sname='Motika')
 where
 snum=(select snum from salespeople where sname='Serres');  