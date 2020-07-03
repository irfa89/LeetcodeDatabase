create table Employee(
id int,
Salary int
)

insert into Employee
values
(1,100),
(2,200),
(3,300)

select * from Employee

select Max(Salary) as SecondHighestSalary from Employee
where Salary < (select Max(Salary) from
Employee) 