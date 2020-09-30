use db;
create table visits
(visit_id    int,
customer_id int  );

insert into visits
values
(1, 23),
(2, 9 ),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

select * from visits;

drop table if exists transactions1;
create table transactions1 (
transaction_id int ,
visit_id        int,
amount         int  );

insert into transactions1
values
(2 , 5, 310 ),
(3 , 5, 300 ),
(9 , 5, 200 ),
(12, 1, 910 ),
(13, 2, 970 );

select * from transactions1;

select customer_id , count(customer_id) as count_no_trans from visits
where visit_id not in (select distinct visit_id from transactions1)
group by customer_id
