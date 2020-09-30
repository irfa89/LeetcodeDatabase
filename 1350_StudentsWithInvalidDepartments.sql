create table departments(
id int,
name varchar(50)
);

create table students(
id int,
name varchar(50),
department_id int
)

insert into departments
values
(1 ,'Electrical Engineering  '),
(7 ,'Computer Engineering    '),
(13,'Bussiness Administration')

insert into students
values
(23,'Alice   ',1 ),
(1 ,'Bob     ',7 ),
(5 ,'Jennifer',13),
(2 ,'John    ',14),
(4 ,'Jasmine ',77),
(3 ,'Steve   ',74),
(6 ,'Luis    ',1 ),
(8 ,'Jonathan',7 ),
(7 ,'Daiana  ',33),
(11,'Madelynn',1 )

select id,name from students where department_id not in
(select s.department_id from students s join departments d
on d.id = s.department_id)