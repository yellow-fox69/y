CREATE USER 'lab'@'%' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON *.* TO 'lab'@'%' WITH GRANT OPTION;

CREATE TABLE Employee (
EMPNO INT, ENAME VARCHAR(50), JOB VARCHAR(50),
MANAGER_NO INT, SAL DECIMAL(10,2),
COMMISSION DECIMAL(10,2));

desc Employee;

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL,
COMMISSION) VALUES
(1, 'John Smith', 'Manager', NULL, 6000.00, 1000.00),
(2, 'Jane Doe', 'Assistant', 1, 4000.00, NULL),
(3, 'Michael Johnson', 'Clerk', 2, 3000.00, 500.00);

Select * from Employee;

start transaction;
set autocommit=0;

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL,
COMMISSION)VALUES
(4, 'Rajeev', 'Trainee', NULL, 2000.00, 1000.00);

select * from employee;

rollback;

select * from employee;

ALTER TABLE Employee
ADD PRIMARY KEY (EMPNO);

desc employee;

ALTER TABLE Employee
MODIFY ENAME VARCHAR(50) NOT NULL,
MODIFY JOB VARCHAR(50) NOT NULL,
MODIFY SAL DECIMAL(10,2) NOT NULL;

insert INTO Employee2 (EMPNO, ENAME, JOB, MANAGER_NO, SAL,
COMMISSION)VALUES
(4, 'Mary', 'Trainee', 01, 2000.00, NULL);

insert INTO Employee2 (EMPNO, ENAME, JOB, MANAGER_NO, SAL,
COMMISSION)VALUES
(1, 'Mary', 'Trainee', 01, 2000.00, NULL);

insert INTO Employee2 (EMPNO, ENAME, JOB, MANAGER_NO, SAL,
COMMISSION)VALUES
(5, 'Mary', NULL, 01, 2000.00, NULL);