create table employee1(
Id Int,
Name varchar(20),
Salary Int,
ManagerId Int
)

truncate table employee1
insert into employee1
values
(1,'Joe  ',70000,3),
(2,'Henry',80000,4),
(3,'Sam  ',60000,NULL),
(4,'Max  ',90000,NULL)

select * from employee1

# Did not pass one case
select t.Name from
(select Name,Max(Salary) from employee1 where ManagerId is not NULL) t

select t.Name as Employee from
IFNULL((select Name,Max(Salary) from employee1 where ManagerId is not NULL),) t

SELECT *
    a.Name AS 'Employee'
FROM
    Employee1 AS a,
    Employee1 AS b
WHERE
    a.ManagerId = b.Id
        AND a.Salary > b.Salary

