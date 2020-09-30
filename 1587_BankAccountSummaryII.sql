use db;

create table users(
account int,
name varchar(20)
);

create table transactions(
trans_id  int,
account int ,
amount int ,
transacted_on date
);

insert into users
values
(900001 , 'Alice  '),
(900002 , 'Bob    '),
(900003 , 'Charlie');

select * from users;

insert into transactions
values
(1,900001,7000 ,"2020-08-01"),
(2,900001,7000 ,"2020-09-01"),
(3,900001,-3000,"2020-09-02"),
(4,900002,1000 ,"2020-09-12"),
(5,900003,6000 ,"2020-08-07"),
(6,900003,6000 ,"2020-09-07"),
(7,900003,-4000,"2020-09-11");

select * from transactions;

select * from (select name, sum(amount) as balance from users u
left join transactions t
on u.account = t.account
-- where sum(amount) > 10000 
group by name) t
where t.balance > 10000
;

select u.name as NAME, sum(t.amount) as BALANCE from Users u 
inner join Transactions t on u.account = t.account
group by t.account
having BALANCE > 10000