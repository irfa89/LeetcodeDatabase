create table courses(
student varchar(20),
class varchar(20)
)

insert into courses
values
('A','Math'),
('B','English'),
('C','Math'),
('D','Biology'),
('E','Math'),
('F','Computer'),
('G','Math'),
('H','Math'),
('I','Math')

select class from
(select student, class, count(*) as cnt from courses
group by class
having cnt >= 5) as t

truncate table courses;
insert into courses
values
("A", "Math"), 
("B", "English"), 
("C", "Math"), 
("D", "Biology"), 
("E", "Math"), 
("F", "Math"), 
("A", "Math") 

select * from courses;

# passed 7/9
select class from
(select student, class, count(*) as cnt from courses
group by class
having cnt >= 5) as t

SELECT
    class
FROM
    (SELECT
        class, COUNT(DISTINCT student) AS num
    FROM
        courses
    GROUP BY class) AS temp_table
WHERE
    num >= 5
;

SELECT
    class
FROM
    (SELECT
        class, COUNT(DISTINCT student) AS num
    FROM
        courses
    GROUP BY class
    having num >= 5) AS temp_table
