1) Write a query that uses a subquery to obtain all
orders for the customer named Cisneros.
Assume you do not know his customer number (cnum);

    
    select * from orders where 
cnum=(select cnum from customers where cname ='Cisneros');

    
    
    
2) Write a query that produces the names and ratings 
		of all customers who have above-average orders.; 
       
       
select cname, rating from customers 
where cnum in (select cnum from orders group by cnum
 having count(cnum)>(select avg(count)
  from (select count(cnum) as count from orders group by cnum) As Temp)); 
        
	

3) Write a query that selects the total amount in orders for each salesperson
 for whom this total is greater than the amount of the largest order in
 the table.;
        

        
select  sum(amt) as toatalamount from orders group by snum having  sum(amt) > 
(select max(amt) from orders);
        