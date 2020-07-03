create table Person(
id int,
Email varchar(20)
)

insert into Person
values
(1,'john@example.com'),
(2,'bob@example.com'),
(3,'john@example.com')

select * from Person

-- Passed all cases
delete from Person 
where id in
(select id from (select *,
row_number() over(partition by email order by id) as row_num
from Person
) t
where t.row_num > 1)


SELECT *
FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email
;

SELECT *
FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email and p1.Id > p2.Id
;

