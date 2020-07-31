
1) Write a query that produces all pairs of salespeople who
   		are living in the same city. Exclude combinations of
   		salespeople with themselves aswell as duplicate rows
 	with the order reversed;



select  distinct a.sname, b.sname from
 salespeople a, 	salespeople b where a.sname > b.sname 
 and a.city = b.city;
 
 
 
 
2) Write a query that produces the names and cities 
of all 		customers with the same rating as Hoffman;

    
    
select  a.cname, a.city from customers a where 
rating =(select rating from customers where cname='HoffmaN'); 
    
    
	
select a.rating, a.cname, b.city from customers a, 		customers b
 where a.rating=b.rating group by a.cname 		having
 a.rating =(select rating from customers where	 	cname ='Hoffman');