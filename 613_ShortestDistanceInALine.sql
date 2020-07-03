create table point(
x int
)

insert into point
values
(-1),
(0),
(2)

select * from point

select x, sum(x) over() as running_total from point

select p1.x as x1, p2.x as x2 , abs(p1.x - p2.x) as distance
from point p1
join point p2
on p1.x <> p2.x

select min(abs(p1.x - p2.x)) as shortest
from point p1
join point p2
on p1.x <> p2.x

