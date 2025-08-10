use practice01 ;

create table employees (
 emp_id int  primary key,
    emp_name varchar(50),
    department varchar(50)
    );
    insert into employees (emp_id, emp_name, department) values
(1, 'Ravi Kumar', 'Sales Department'),
(2, 'Kishore', 'IT Department'),
(3, 'Madhu Bala', 'Sales Department'),
(4, 'Anusha', 'HR Department'),
(5, 'Vishal', 'Marketing Department');

select * from employees ;

select * from employees where emp_name like '%R' ;
select * from employees where emp_name like '%a' ;
select * from employees where emp_name like '%sh%' ;
select * from employees where department like '%Sales%' ;




