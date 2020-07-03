create table salesperson (
sales_id INT,
name varchar(20),
salary Int,
commission_rate int,
hire_date date
)

alter table salesperson modify column hire_date varchar(20)

insert into salesperson
values
(1      , 'John' , 100000 ,     6           , '4/1/2006'  ),
(2      , 'Amy'  , 120000 ,     5           , '5/1/2010'  ),
(3      , 'Mark' , 65000  ,     12          , '12/25/2008'),
(4      , 'Pam'  , 25000  ,     25          , '1/1/2005'  ),
(5      , 'Alex' , 50000  ,     10          , '2/3/2007'  )

select * from salesperson

create table company (
com_id int,
name varchar(20),
city varchar(20)
)

insert into company
values
(   1     ,  'RED'   ,   'Boston'   ),
(   2     , 'ORANGE' ,   'New York' ),
(   3     , 'YELLOW' ,   'Boston'   ),
(   4     , 'GREEN'  ,   'Austin'   )

select * from company

create table orders(
order_id int,
order_date varchar(20),
com_id int,
sales_id int,
amount int
)

insert into orders
values
( 1 ,   '1/1/2014' , 3 , 4 , 100000 ),
( 2 ,   '2/1/2014' , 4 , 5 , 5000   ),
( 3 ,   '3/1/2014' , 1 , 1 , 50000  ),
( 4 ,   '4/1/2014' , 1 , 4 , 25000  )

truncate table orders;
select * from orders;
truncate table salesperson;
select * from salesperson;
truncate table company;
select * from company;

# Failed 1 test case
select name from salesperson
where sales_id not in (
select o.sales_id from company c left outer join orders o
on c.com_id = o.com_id where c.name = 'RED')

insert into salesperson
values
(1, "John", 100000, 6, "4/1/2006"), 
(2, "Amy", 12000, 5,"5/1/2010"), 
(3, "Mark", 65000, 12, "12/25/2008"), 
(4, "Pam", 25000, 25,"1/1/2005"),
(5,"Alex",5000,10,"2/3/2007")
select * from salesperson;

insert into orders
values
(1,"1/1/2014",3,4,10000),
(2, "2/1/2014", 4, 5, 5000),
(3, "3/1/2014", 2, 1, 50000),
(4, "4/1/2014", 2, 4, 25000)

select * from orders;


insert into company
values
(1, "RED","Boston"), 
(2, "ORANGE", "New York"),
(3, "YELLOW", "Boston"),
(4, "GREEN", "Austin")
select * from company; 

-- The problem was if there was null in sales id
SELECT salesperson.name from salesperson
WHERE sales_id not in (
SELECT sales_id from orders
WHERE com_id = (SELECT com_id from company WHERE name = 'RED')
)
Order by salesperson.sales_id

-- Passed all test cases 20/20
"values":[["John"],["Amy"],["Mark"],["Pam"],["Alex"]]}
