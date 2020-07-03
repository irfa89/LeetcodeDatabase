use db;
create table salary(
id int,
name varchar(20),
sex varchar(20),
salary int
);

insert into salary
values
(1,'A','m',2500),
(2,'B','f',1500),
(3,'C','m',5500),
(4,'D','f',500)

select * from salary

SET SQL_SAFE_UPDATES = 0;
update salary set  sex = case when sex = 'm' then 'f' else 'm' end;