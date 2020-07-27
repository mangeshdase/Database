1) Write a query that lists each order number followed by the name of the customer who made the order;
	
select o.onum ,c.cname from orders o, customers c where o.cnum=c.cnum; 




2) Write a query that gives the names of both the salesperson and the customer 
for each order along with the order number. ;
	select s.sname,c.cname,o.onum from orders o, customers c, salespeople s where o.cnum=c.cnum and c.SNUM=s.snum;




3) Write a query that produces all customers serviced by salespeople with a commission above 12%. 
Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission;
	
select c.cname, s.sname,s.comm from customers c, salespeople s where c.snum=s.snum having comm>0.12; 




4) Write a query that calculates the amount of the salesperson’s commission on each order by 
a customer with a rating above 100.;
	
select o.ONUM ,s.sname, (amt*0.12)as COMM from  orders o,customers c, salespeople s
 where o.snum = s.snum and  rating >100 ;
