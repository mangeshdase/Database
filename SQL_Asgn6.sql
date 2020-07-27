1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.;

	select * from orders;
select * from orders where odate ='1990-10-03' or odate='1990-10-04';
	
select * from orders having odate='1990-10-03' or odate ='1990-10-04';



2) Write a query that selects all of the customers serviced by Peel or Motika.
	(Hint: the snum field relates the two tables to one another).;

    
    select * from customers where SNUM=(select snum from salespeople where sname='peel')
   or snum=(select snum from salespeople where sname = 'motika');

   

3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’. ;

	select * from customers where cname between 'A%'and'G%' ;




4) Write a query that selects all customers whose names begin with the letter ‘C’;

	select * from customers where cname like 'C%';




5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.; 

	select * from orders where amt != 0 or amt !='NUll';