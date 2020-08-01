1) Give Amit the right to change the ratings of the customers.;


	 grant update on customers to Amit;



 2) Give Manoj the right to give other users the right to query the Orders table.;

	 grant select on orders to Manoj with grant option;
 	grant select on Manoj.orders to Mangesh;

	 grant update on Manoj.orders to Mangesh;

3) Take the INSERT privilege on Salespeople away from Ajita.;

	 revoke insert on salespeople from Ajita;

 
 
4) Grant Abhijeet the right to insert or update the Customers table while keeping her
	possible rating values in the range of 100 to 500.;

	create view  customers1 AS select * from customers where rating 	between 100 and 500 with check option;

	grant insert  on customers1 to Abhijeet;

	grant update on customers1 to Abhijeet;