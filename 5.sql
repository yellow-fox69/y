CREATE TABLE Employee (
E_id INT,
E_name VARCHAR(255),
Age INT,
Salary DECIMAL(10, 2)
);

INSERT INTO Employee (E_id, E_name, Age, Salary)
VALUES
(1, 39,"Shankar",9, 30, 50000.00),
(2, 39,"Rahul",39, 25, 45000.00),
(3, 39,"Muskaan",39, 35, 62000.00),
(4, 39,"Mathew",39;, 28, 52000.00),
(5, 39,"Raj", 32, 58000.00);

DELIMITER //

CREATE PROCEDURE fetch_employee_data()
BEGIN
DECLARE emp_id INT;
DECLARE emp_name VARCHAR(255);
DECLARE emp_age INT;
DECLARE emp_salary DECIMAL(10, 2);
DECLARE emp_cursor CURSOR FOR
SELECT E_id, E_name, Age, Salary
FROM Employee;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET @finished = 1;
OPEN emp_cursor;
SET @finished = 0;
cursor_loop: LOOP
FETCH emp_cursor INTO emp_id, emp_name, emp_age, emp_salary;
IF @finished = 1 THEN
LEAVE cursor_loop;
END IF;
SELECT CONCAT('Employee ID:', emp_id,', Name:', emp_name,', Age:', emp_age,
',Salary:', emp_salary) AS Employee_Info;
END LOOP;
CLOSE emp_cursor;
END//

DELIMITER ;

CALL fetch_employee_data();
