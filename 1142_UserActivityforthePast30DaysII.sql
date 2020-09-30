create table activity(
user_id int,
session_id int,
activity_date date,
activity_type enum('open_session', 'end_session', 'scroll_down', 'send_message')
)

insert into activity
values
(1,1,'2019-07-20','open_session'),
(1,1,'2019-07-20','scroll_down '),
(1,1,'2019-07-20','end_session '),
(2,4,'2019-07-20','open_session'),
(2,4,'2019-07-21','send_message'),
(2,4,'2019-07-21','end_session '),
(3,2,'2019-07-21','open_session'),
(3,2,'2019-07-21','send_message'),
(3,2,'2019-07-21','end_session '),
(3,5,'2019-07-21','open_session'),
(3,5,'2019-07-21','scroll_down '),
(3,5,'2019-07-21','end_session '),
(4,3,'2019-06-25','open_session'),
(4,3,'2019-06-25','end_session ')

select * from activity

select round(cast(count(activity_type) as float) /cast(count(distinct user_id) as float),2) as average_sessions_per_user
from Activity 
where datediff(activity_date,'2019-07-27')<=30
and activity_type in ('scroll_down ','send_message')

# correct passed all cases.
select ifnull(round(count(distinct session_id)/count(distinct user_id),2),0) as average_sessions_per_user 
from activity
where activity_Date > '2019-06-27'
