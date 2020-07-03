create table department(
id int,
revenue int,
month varchar(20)
)

insert into department
values
(1,8000 ,'Jan'),
(2,9000 ,'Jan'),
(3,10000,'Feb'),
(1,7000 ,'Feb'),
(1,6000 ,'Mar')

select * from department

select id
, sum(revenue) over (PARTITION BY month) as Jan_Revenue
from department
group by month
order by id

# Accepted

SELECT id,
MAX(CASE WHEN month='Jan' then revenue else null end) Jan_Revenue,
MAX(CASE WHEN month='Feb' then revenue else null end) Feb_Revenue,
MAX(CASE WHEN month='Mar' then revenue else null end) Mar_Revenue,
MAX(CASE WHEN month='Apr' then revenue else null end) Apr_Revenue,
MAX(CASE WHEN month='May' then revenue else null end) May_Revenue,
MAX(CASE WHEN month='Jun' then revenue else null end) Jun_Revenue,
MAX(CASE WHEN month='Jul' then revenue else null end) Jul_Revenue,
MAX(CASE WHEN month='Aug' then revenue else null end) Aug_Revenue,
MAX(CASE WHEN month='Sep' then revenue else null end) Sep_Revenue,
MAX(CASE WHEN month='Oct' then revenue else null end) Oct_Revenue,
MAX(CASE WHEN month='Nov' then revenue else null end) Nov_Revenue,
MAX(CASE WHEN month='Dec' then revenue else null end) Dec_Revenue
From
Department
Group By id