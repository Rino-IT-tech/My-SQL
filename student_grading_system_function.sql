use practice01 ;

create table Student_detailes(
id  int ,
Name varchar(30) ,
Marks int ) ;

insert into Student_detailes(id,Name,Marks) values 
(1, 'Ravi', 95),
(2, 'Kishore', 72),
(3, 'Madhu', 59),
(4, 'Anita', 88),
(5, 'Vijay', 65);

select *  from Student_detailes ;

delimiter $$ 
create function getGradeById(stu_id int )
returns char(1) 
deterministic
begin 
   declare stu_score int ;
   declare grate char (1) ;
   
   select Marks into stu_score from Student_detailes where id = stu_id ;
   
   if stu_score >= 90 and stu_score <= 100 then 
      set  grate = 'A' ;
   elseif stu_score >=80 and stu_score <= 90 then
      set grate = 'B' ;
   elseif stu_score >= 70 and stu_score <= 80 then 
      set grate = 'c' ;
   elseif stu_score >= 60 and stu_score <= 70 then 
	  set grate = 'D' ;
	elseif stu_score >= 50 and stu_score <= 60 then 
	  set grate = 'E' ;
   else 
       set grate = 'F' ;
   end if ;
   return grate ;
   end $$ 
   DELIMITER ;
   
   select  getGradeById (4) as Grade ;
   
   select id , Name , Marks ,  getGradeById(id) from Student_detailes ;
   


