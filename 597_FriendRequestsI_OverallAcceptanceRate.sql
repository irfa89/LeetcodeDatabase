create table friend_request(
sender_id int,
send_to_id int,
request_date varchar(20)
)

insert into friend_request
values
(1, 2,'2016_06-01'),
(1, 3,'2016_06-01'),
(1, 4,'2016_06-01'),
(2, 3,'2016_06-02'),
(3, 4,'2016-06-09')

select * from friend_request

create table request_accepted(
requester_id int,
accepter_id int,
accept_date varchar(20)
)

insert into request_accepted
values
(1,2,'2016_06-03'),
(1,3,'2016-06-08'),
(2,3,'2016-06-08'),
(3,4,'2016-06-09'),
(3,4,'2016-06-10')

select * from request_accepted


-- Write a query to find the overall acceptance rate of requests rounded to 2 decimals, 
-- which is the number of acceptance divide the number of requests
select round(ifnull(
(select count(*) from (select distinct sender_id,send_to_id from friend_request) as fr)/
(select count(*) from (select distinct requester_id,accepter_id from request_accepted) as ra)
,0),2) as accept_rate

