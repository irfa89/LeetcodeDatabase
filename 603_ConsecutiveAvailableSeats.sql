drop table cinema;
create table cinema (
seat_id INT,
free boolean
)

insert into cinema
values
(1, True),
(2, False),
(3,True),
(4,True),
(5,True)


-- Passed 7/16 cases
with cte as (select *
, seat_id - row_number() over() as grp
from cinema where free=true)
select seat_id from cte where grp = 1
------------------------------------------------------------------------------------
{"headers":{"cinema":["seat_id","free"]},"rows":{"cinema":[[1,1],[2,1]]}}

truncate table cinema;
select * from cinema

insert into cinema
values
(1, True),
(2, True)

select a.seat_id,a.free, b.seat_id,b.free from cinema a
join cinema b;

select a.seat_id,a.free, b.seat_id,b.free , abs(a.seat_id - b.seat_id) as diff from cinema a
join cinema b
on abs(a.seat_id - b.seat_id) = 1 and a.free = true and b.free = true

-- Passed all test cases 16/16
select distinct a.seat_id from cinema a
join cinema b
on abs(a.seat_id - b.seat_id) = 1 and a.free = true and b.free = true
order by a.seat_id

-- Passed all test cases
select seat_id from cinema
where free = 1
and ((seat_id + 1) in (select seat_id from cinema where free=1)
or (seat_id - 1) in (select seat_id from cinema where free=1))


