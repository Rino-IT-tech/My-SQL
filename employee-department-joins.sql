use practice ;

create table Employee (
EmployeeID int, 
Name varchar (20),
 DepartmentID int ) ;
 
 create table Department (
 DepartmentID int,
 DepartmentName varchar(30) ) ;
 
 insert into Employee ( EmployeeID , Name , DepartmentID ) 
 values ( 1 , 'Rino' , 101 ) , ( 2 , ' Kishore ' , 102 ) , ( 3 , 'Muthu ' , 103 ) ;
 
 insert into Department ( DepartmentID , DepartmentName ) values 
 (101 , 'frontend developer ' ) , (102 , ' fullstack ' ) , (103 , 'testing' ) ;
 
select e.EmployeeID , e. Name , d.departmentName from Employee e inner join Department d on e.DepartmentID = d.DepartmentID ;

SELECT E.Name AS EmployeeName, D.DepartmentName
FROM Employee E
RIGHT JOIN Department D ON E.DepartmentID = D.DepartmentID;

SELECT E.Name AS EmployeeName, D.DepartmentName
FROM Employee E
LEFT JOIN Department D ON E.DepartmentID = D.DepartmentID;

SELECT E.Name AS EmployeeName  , D.DepartmentName 
FROM Employee E
JOIN Department D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'testing';



  