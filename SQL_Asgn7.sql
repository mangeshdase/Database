1) Write a query that counts all orders for October 3. ;
	
select count(*) from orders where odate='1990-10-03';



2) Write a query that counts the number of different non-NULL city
 values in the Customers table.;

	 select count(distinct(city))from customers where city is not NULL;



3) Write a query that selects each customer’s smallest order;
  	select cnum ,min(amt) from orders group by cnum;


4) Write a query that selects the first customer, in alphabetical order, whose name begins with G.;
  
	select cname from customers where cname like 'G%' order by cname limit 1;
  
 

5) Write a query that selects the highest rating in each city.; 
   	select city, max(rating) as 'HIGHEST RATING' from customers group  by city;

  
6) Write a query that counts the number of salespeople registering orders for each day. 
   (If a salesperson has more than one order on a given day, he or she should be counted only once.).;
    
	select odate, snum, count(distinct odate) from orders group by odate,snum;