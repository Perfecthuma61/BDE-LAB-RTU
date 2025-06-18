CREATE TABLE employees ( 

 id INT AUTO_INCREMENT PRIMARY KEY, 

 name VARCHAR(100) NOT NULL, 

 age INT, 

 department VARCHAR(50) 

);

--Retrieve All Employees : 

SELECT * FROM employees;

--Retrieve Specific Columns 

SELECT name, department FROM employees;

--Filter Data Using WHERE Clause : 

SELECT * FROM employees WHERE department = 'HR';

--Sort Results Using ORDER BY : 

SELECT * FROM employees ORDER BY age DESC;
--Insert a Single Record : 

INSERT INTO employees (name, age, department) VALUES ('Alice', 30, 'HR');

--Insert Multiple Records : 

INSERT INTO employees (name, age, department) VALUES 

('Bob', 25, 'Engineering'), 

('Charlie', 35, 'Marketing');

--Update a Single Record 

UPDATE employees SET age = 31 WHERE name = 'Alice';

--Update Multiple Records : 

UPDATE employees SET department = 'Sales' WHERE department = 'Marketing';

--Delete a Single Record : 

DELETE FROM employees WHERE name = 'Bob';

--Delete All Records in a Table : 

DELETE FROM employees;
