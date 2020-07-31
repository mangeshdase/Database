1) Create the Orders table so that all onum values as well
 as all combinations of cnum and snum are different from one another,
 and so that NULL values are excluded from the date field. ;
 
 
create table orders1 (onum int(4), cnum int(4), snum int (4),
 odate date not null, constraint P_k_1 primary key(onum,cnum,snum));
 


 2) Create the Salespeople table so that the default commission is 10%
 with no NULLS permitted, snum is the primary key, and all 
 names fall alphabetically between A and M, inclusive 
 (assume all names will be uppercase). ;
 
 
create table salespeople1 
 (comm float(4,2) default 0.10, snum int(4) primary key,
 sname varchar(15) check (sname=upper(sname) between 'A' and 'M'));
 
 

3) Create the Orders table, making sure that the onum is greater than the cnum,
 and the cnum is greater that the snum. 
 Allow no NULLS in any of these three fields. ;
 
 
create table orders2 (onum int(4) not null, AMT float(7,2), ODATE date,
 cnum int(4) not null, snum int(4) not null,
 constraint onum_cnum_snum check(onum>cnum>snum)); 

 
 
 
 
 
 
 
 
 
 
 
 
 