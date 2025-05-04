create table employee( E_id int PRIMARY KEY, E_name varchar(50) NOT
NULL, Age int NOT NULL, salary decimal(10,2));

desc employee;

insert into employee(E_id, E_name, Age, salary) values
(1,'Akash',20,2000.00),(2,'Arjun',18,5000.00),(3,'Sneha',21,7000.00),
(4,'Sachin',23,12000.00),(5,'Rahul',20,2000.00),(6,'Pooja',24,20000.00);

select * from employee;

select count(E_name) as Total_Employees from employee;

Select max(Age) as Max_Age from employee;

Select min(Age) as Min_Age from employee;

Select E_name, Salary from employee
order by salary ASC;

select salary, count(*) as Employee_Count
from employee
group by salary;

