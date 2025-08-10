use practice01 ;

create table Orders (
order_id int ,
Name varchar(40) ,
Order_price int ,
place varchar(30) ) ;

insert into Orders (order_id ,Name,Order_price,place ) values 
(1, 'Ravi', 2500.00, 'chennai'),
(2, 'Ravi', 1800.00, 'pudukkoatai'),
(3, 'Kishore', 1500.00, 'vellore'),
(4, 'Madhu', 3200.00, 'villupuram'),
(5, 'Kishore', 2200.00, 'thiruvannamalai'),
(6, 'Ravi', 3000.00, 'madurai');

select Name, sum(Order_price) as Total_sales , avg(Order_price) as 	average_order,count(order_id) as total_orders, max(Order_price) as Highest_order from Orders group by Name ; 
