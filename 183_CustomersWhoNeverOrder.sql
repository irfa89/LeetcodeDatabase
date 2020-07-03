create table Customers(
Id Int,
Name varchar(20)
)

insert into Customers
values
(1,'Joe'),
(2,'Henry'),
(3,'Sam'),
(4,'Max')

create table Orders1
(
Id int,
CustomerId int
)

insert into Orders1
values
(1,3),
(2,1)

# Did not pass all cases
select name from Customers where name not in (
select name from Customers c join Orders1 o on c.Id = o.CustomerId)

# Passed all cases
select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders1
);
