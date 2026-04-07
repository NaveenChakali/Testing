-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
INSERT ALL
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001)
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001)
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002)
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002)
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006)
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005)
SELECT 1 FROM DUAL;

SELECT * from CUSTOMERS;

select * from orders;

select * from salesman;

select s.salesman_name,c.customer_name from salesman s inner join customers c on s.SALESMAN_ID = 
c.SALESMAN_ID;

select c.customer_name,s.salesman_name from salesman s inner join customers c on s.SALESMAN_ID = 
c.SALESMAN_ID where s.GRADE <300;

select c.customer_name,s.salesman_name from salesman s inner join customers c on s.SALESMAN_ID = 
c.SALESMAN_ID where s.COMMISSSION>12;

select o.order_no,o.order_date,o.purchase_amount,c.customer_name,s.SALESMAN_NAME,s.commisssion 
from orders o inner join customers c on o.CUSTOMER_ID = c.CUSTOMER_ID 
inner join salesman s on c.SALESMAN_ID = s.SALESMAN_ID;

select * from orders where salesman_id = 
(select salesman_id from CUSTOMERS where CUSTOMER_ID = 3007);

SELECT * from salesman;

select * from orders where salesman_id = 
(select salesman_id from salesman where salesman_city = 'new york');

select * from customers;

select count(CUSTOMER_ID) as Number_of_customers  from CUSTOMERS where grade > (
select avg(grade) from customers where city = 'New York');

select * from orders where salesman_id = (
select SALESMAN_ID from salesman where COMMISSSION = 
(select max(commisssion) from salesman));