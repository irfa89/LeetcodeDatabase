create table my_numbers(
num int
)

insert into my_numbers
values
( 8 ),
( 8 ),
( 3 ),
( 3 ),
( 1 ),
( 4 ),
( 5 ),
(6 )

select * from my_numbers

select max(num) from 
(select num, count(*) as count
from my_numbers
group by num) as t
where t.count = 1

select max(num) as num from 
(select num
from my_numbers
group by num
having count(num) =1
) as t