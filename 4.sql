create table customer
(ID int primary key,
NAME varchar(20) not null,
AGE int not null,
ADDRESS varchar(20) not null,
SALARY decimal(10,2) not null);

insert into customer(ID,NAME,AGE,ADDRESS,SALARY)
values
(1,'Avinash',24,'Mangalore',20000),
(2,'Bhavish',24,'Mangalore',30000),
(3,'Chetan',24,'Mangalore',35000),
(4,'Krithi',24,'Mangalore',50000),
(5,'Ramya',24,'Mangalore',40000);


DELIMITER //

CREATE TRIGGER after_insert_salary_difference
AFTER INSERT ON CUSTOMER
FOR EACH ROW
BEGIN
SET @my_sal_diff =
CONCAT('salary inserted is ', NEW.SALARY);
END;//

DELIMITER ;

INSERT INTO CUSTOMER (ID,NAME, AGE, ADDRESS,
SALARY)
VALUES (6,'Shankar', 35, 'Bangalore', 50000.00);

SELECT @my_sal_diff AS SAL_DIFF;



DELIMITER //
CREATE TRIGGER after_update_salary_difference
AFTER UPDATE ON CUSTOMER
FOR EACH ROW
BEGIN
DECLARE old_salary DECIMAL(10, 2);
DECLARE new_salary DECIMAL(10, 2);

SET old_salary = OLD.SALARY;
SET new_salary = NEW.SALARY;
SET @my_sal_diff =
CONCAT('salary difference after
update is ', NEW.SALARY - OLD.SALARY);
END;//

DELIMITER ;

UPDATE CUSTOMER
SET SALARY = 55000.00
WHERE ID = 6;

SELECT @my_sal_diff AS SAL_DIFF;


DELIMITER //

CREATE TRIGGER after_delete_salary_difference
AFTER DELETE ON CUSTOMER
FOR EACH ROW
BEGIN
SET @my_sal_diff =
CONCAT('salary deleted is ', OLD.SALARY);
END;//

DELIMITER ;

DELETE FROM CUSTOMER
WHERE ID = 6;

SELECT @my_sal_diff AS SAL_DIFF;
