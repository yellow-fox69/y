CREATE TABLE Employee (

EMPNO INT PRIMARY KEY,ENAME VARCHAR(50) NOT NULL,
JOB VARCHAR(50) NOT NULL, MGR INT, SAL DECIMAL(10,2) NOT NULL);

desc Employee;

alter table employee add(COMMISSION decimal(10,2));

INSERT INTO Employee (EMPNO, ENAME, JOB, MGR, SAL,
COMMISSION) VALUES
(101, 'John Smith', 'Manager', NULL, 6000.00, 1000.00),
(102, 'Jane Doe', 'Assistant', 1, 4000.00, 500.00),
(103, 'Michael Johnson', 'Clerk', 2, 3000.00, 500.00),
(104, 'Mike', 'Clerk', 2, 3000.00, 500.00),
(105, 'Tim', 'Clerk', 2, 3000.00, 500.00);

update employee set job='trainee' where empno=105;

alter table employee rename column SAL to SALARY;
alter table employee rename column MGR to MANAGER_NO;

delete from employee where empno=105;