create table Submissions
(
sub_id int,
parent_id int
)

insert into Submissions
values
(1 ,Null),
(2 ,Null),
(1 ,Null),
(12,Null),
(3 ,1   ),
(5 ,2   ),
(3 ,1   ),
(4 ,1   ),
(9 ,1   ),
(10,2   ),
(6 ,7   )

select * from Submissions

-- parent_id is null for posts.
-- parent_id for comments is sub_id for another post in the table.

select * from Submissions where parent_id is null

select *, count(parent_id) over(partition by sub_id) from Submissions group by sub_id
-- where parent_id is null group by sub_id 

SELECT DISTINCT x.sub_id as post_id, Count(Distinct y.sub_id) as number_of_comments
FROM Submissions x LEFT JOIN Submissions y ON x.sub_id=y.parent_id
Where x.parent_id is NULL
GROUP BY x.sub_id

select * from Submissions x group by sub_id
left join Submissions y on x.sub_id = y.parent_id

with cte as (select sub_id, parent_id, count(parent_id) as count from Submissions group by parent_id)
select distinct x.sub_id as post_id, coalesce(cte.count,0) as number_of_comments from Submissions x left join cte 
on cte.parent_id = x.sub_id where x.parent_id is null 


select *, row_number() over(partition by sub_id) rnk from  Submissions where 