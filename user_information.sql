create database practices ;

use practices ;

create table UserInformations (
UserId int primary key ,
UserName varchar(50) not null ,
Email varchar(50) unique ,
Age int check (Age > 13 ) ,
Country varchar(50) default ' USA');
select * from UserInformations;

insert into UserInformations (UserID , UserName  , Email , Age , Country ) values 
(1 , 'Rino ' , 'example123@gmail.com' , 19 , 'India'),
(2 , 'Kishore' , 'example1234@gmail.com' , 19 , 'India') ,
(3 , 'muthu' , 'example1283@gmail.com' , 20 , 'USA') ,
(4 , 'vishal devanku ' , 'example134@gmail.com' , 21 , 'India' ) ;
select * from UserInformations ;