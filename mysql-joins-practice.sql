create database practice;

use practice ;

create table Customers (
CustomerId int primary key ,
Name varchar(50) ,
city varchar(50) ) ;


create table Orders (
OrderId int primary key ,
CustomerId int ,
product varchar(50) ) ;

insert into Customers (CustomerId , Name , city) values
(1,'Alice', 'New York') , (2 , 'Bob' , ' Chicago') , (3 , 'Charile' , 'Miami' );

insert into Orders (OrderId , CustomerId , product) values
(101,'1', 'Laptop') , (102 , 1 , 'Mouse') , (103 , 2 , 'Keybord') , (104, 4 , 'Monitor');

select * from Customers ;
select * from Orders ;

select  c.CustomerId , c.Name , c.city 
from Customers c  inner join Orders o on c.CustomerId = o.CustomerId ;


select  o.OrderId , o.product , c.CustomerId,c.Name, c.city
from Customers c  right join Orders o on c.CustomerId  =  o.CustomerId ;

select c.CustomerId, c.Name, c.City, o.OrderId, o.Product
from Customers c left join Orders o on c.CustomerId = o.CustomerId

union 

select c.CustomerId, c.Name, c.City, o.OrderId, o.Product
from Customers c right join Orders o on c.CustomerId = o.CustomerId;

select c.CustomerId, c.Name, c.City, o.Product
from Customers c right join Orders o on c.CustomerId = o.CustomerId where o.product = 'Mouse';


