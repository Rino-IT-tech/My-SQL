use practice01 ;
create table Employee1 (
    emp_id int primary key ,
    emp_name varchar(30),
    department varchar(50),
    salary decimal(10,2)
);
drop table Employee_Audit ;
create table Employee_Audit (
    audit_id int auto_increment primary key,
    emp_id INT,
    action varchar(20)
);

DELIMITER $$
create trigger triger 
after insert 
on Employee1
for each row 
begin 
   insert into Employee_Audit (emp_id,action) values (new.emp_id , 'inserted' );
   end $$ 
   DELIMITER ;

DELIMITER $$
create trigger triger_delete 
after delete 
on Employee1
for each row 
begin 
   insert into Employee_Audit (emp_id , action) values (old.emp_id , ' deleted ' ) ;
   end $$
    DELIMITER ;
    
    DELIMITER $$
create trigger triger_update 
after update 
on Employee1
for each row 
begin 
   insert into Employee_Audit (emp_id , action) values (new.emp_id , ' Updated ' ) ;
   end $$
    DELIMITER ;
    
insert into Employee1 (emp_id, emp_name, department, salary)
values (1, 'Ravi', 'Sales', 50000),
       (2, 'Kishore', 'HR', 40000);
	
update Employee1 set salary = 80000 where emp_id = 1 ;

delete from Employee1 where emp_id = 2 ;

select * from  Employee_Audit ;

select * from Employee1 ;


    

