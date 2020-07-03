select * from Person

# Not efficient
select email from
(select *,
row_number() over(partition by email) as rnk
from person ) t
where t.rnk > 1

# Efficient
select Email
from Person
group by Email
having count(Email) > 1;