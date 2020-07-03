create table cinema(
id int,
movie varchar(50),
descriptn varchar(50),
rating float
)

insert into cinema
values
(  1 , 'War' , 'great 3D' ,8.9),
(   2 ,'Science' ,'fiction' ,8.5),
(   3 , 'irish' , 'boring' ,6.2),
(   4 ,'Ice song' ,'Fantacy' ,8.6 ),
(   5  , 'House card', 'Interesting',9.1)

select * from cinema
where descriptn not like '%boring%' and id % 2 = 1;

select *
from cinema
where descriptn not like '%boring%' and id % 2 = 1
order by rating desc