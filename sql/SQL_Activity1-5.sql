create table Salesman(salesman_id int PRIMARY key,salesman_name varchar(20) 
not null,salesman_city varchar(20),
commisssion int);

DESCRIBE salesman;

insert all into salesman values(5001,'james hoog','new york',15)
    into salesman values(5002,'Nail Knite','Paris',13)
    into salesman values(5005,'pit alex','london',14)
    into salesman values(5006,'Nolyon','paris',14)
    into salesman values(5007,'paul adam','rome',13)
    into salesman values(5003,'Lausen Hen','San Jose',12)
select 1 from dual;

select * from salesman;

select salesman_id,salesman_city from salesman;

select * from salesman where salesman_city = 'paris';

select salesman_id,commisssion from salesman where SALESMAN_NAME='paul adam';

select * from salesman;

alter table salesman add grade int;

select * from salesman;

update salesman set grade = 100;

select * from salesman; 

update SALESMAN set grade = 200 where salesman_city = 'rome';

update salesman set grade = 300 where salesman_name = 'james hoog';

update salesman set salesman_name = 'Pierre' where salesman_name = 'Nolyon';

select * from salesman;