1) Create a view that shows all of the customers who have the highest ratings.;


 create view v1_customers as select * from customers where rating=(select max(rating) from customers);

 select * from sameersir.v1_customers;

 
 
2) Create a view that shows the number of salespeople in each city. ;

 

 create view v1_salespeople as select city,count(snum) from salespeople group by city;
 
select * from sameersir.v1_salespeople;
 


 3) Create a view that shows the average and total orders for each salesperson
 after his or her name. Assume all names are unique;
 
   
	create view v2_salespeople as select sname, avg(onum) average,count(onum) total_orders from orders,
    salespeople where salespeople.snum=orders.snum group by sname;
 
    select * from v2_salespeople;
    


4) Create a view that shows each salesperson with multiple customers. ;


create view v3_salespeople as select sname, cname from salespeople, customers where salespeople.snum=customers.snum;
select * from v3_salespeople;