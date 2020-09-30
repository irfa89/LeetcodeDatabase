use db;
create table weather(
id INT,
RecordDate Date,
Temperature INT
)

insert into weather
values
(1,'2015-01-01',10),
(2,'2015-01-02',25),
(3,'2015-01-03',20),
(4,'2015-01-04',30)

select * from weather;

select w1.id from weather w1 join weather w2
on datediff(w1.RecordDate,w2.RecordDate) = 1
and w1.Temperature > w2.Temperature

