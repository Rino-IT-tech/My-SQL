CREATE DATABASE ranking_demo;
USE ranking_demo;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO Employees (emp_id, emp_name, department, salary) VALUES
(1, 'Ravi', 'IT', 50000),
(2, 'Kishore', 'IT', 70000),
(3, 'Madhu', 'HR', 60000),
(4, 'Anita', 'IT', 70000),
(5, 'Vijay', 'Finance', 50000),
(6, 'Priya', 'HR', 90000),
(7, 'Arun', 'Finance', 50000);

SELECT * FROM Employees;

SELECT emp_name, department, salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS RankBySalary
FROM Employees;

SELECT emp_name, department, salary,
       DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS DenseRankBySalary
FROM Employees;
