CREATE DATABASE nested_subquery_demo;
USE nested_subquery_demo;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_id, emp_name, department, salary) VALUES
(1, 'Ravi', 'IT', 50000),
(2, 'Kishore', 'IT', 70000),
(3, 'Madhu', 'HR', 90000),
(4, 'Anita', 'Finance', 60000),
(5, 'Vijay', 'Finance', 80000),
(6, 'Priya', 'HR', 60000),
(7, 'Arun', 'IT', 55000);

SELECT * FROM Employees;

SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary) 
    FROM Employees 
    WHERE department = 'IT'
);

SELECT department, max_salary
FROM (
    SELECT department, MAX(salary) AS max_salary
    FROM Employees
    GROUP BY department
) AS dept_max;


SELECT emp_name, department, salary,
       salary - (SELECT AVG(salary) FROM Employees) AS diff_from_avg
FROM Employees;
