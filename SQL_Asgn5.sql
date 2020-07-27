show databases;

use sameersir;

show tables;

select * from orders;


1) Write a query that will give you all orders for more than Rs. 	1,000;

    select * from orders where amt > 1000;


select * from salespeople;




2) Write a query that will give you the names and cities of all salespeople in London with 
a commission above .10. ;

    select sname, city from salespeople where comm > .10;


select * from customers;


3) Write a query on the Customers table whose output will exclude all customers with a rating <= 100,
unless they are located in Rome. ;

	select * from  customers where rating > 100 and city != 'Rome';


    
  
4)  What will be the output from the following query? ;

	Select * from Orders where (amt < 1000 OR NOT (odate = '1990-10-03' AND cnum > 2003));
 
# ONUM, AMT, ODATE, CNUM, SNUM

'3001', '18.69', '1990-10-03', '2008', '1007'

'3003', '767.19', '1990-10-03', '2001', '1001'

'3005', '5160.45', '1990-10-03', '2003', '1002'

'3009', '1713.23', '1990-10-04', '2002', '1003'

'3007', '75.75', '1990-10-04', '2004', '1002'

'3008', '4723.00', '1990-10-05', '2006', '1001'

'3010', '1309.95', '1990-10-06', '2004', '1002'

'3011', '9891.88', '1990-10-06', '2006', '1001'




5) What will be the output of the following query?  ;
	Select * from Orders where NOT ((odate = '1990-10-03' OR snum >1006) AND amt >= 1500);

# ONUM, AMT, ODATE, CNUM, SNUM

'3001', '18.69', '1990-10-03', '2008', '1007'

'3003', '767.19', '1990-10-03', '2001', '1001'

'3006', '1098.16', '1990-10-03', '2008', '1007'

'3009', '1713.23', '1990-10-04', '2002', '1003'

'3007', '75.75', '1990-10-04', '2004', '1002'

'3008', '4723.00', '1990-10-05', '2006', '1001'

'3010', '1309.95', '1990-10-06', '2004', '1002'

'3011', '9891.88', '1990-10-06', '2006', '1001'



 6) What is a simpler way to write this query?;

	 Select snum, sname, city, comm From Salespeople where    (comm > .12 OR comm <.14);
 
select * from salespeople where comm > .12 or comm < .14;