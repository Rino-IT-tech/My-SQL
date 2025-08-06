use practice1;

create table voterlist (
voterID int ,
name varchar(40) ,
age int ) ;
drop table voterlist ;
insert into voterlist (voterID , name , age) values 
(1 , 'Rino', 20 ) ,
(2,'kishore',12),
(3,'vishal',17),
(4,'muthu',18) ;
select * from voterlist ; 

DELIMITER $$

CREATE PROCEDURE checkvoter(
    IN vid INT,
    OUT msg VARCHAR(50)
)
BEGIN
    DECLARE voter_age INT;

    SELECT age INTO voter_age 
    FROM voterlist 
    WHERE voterID = vid 
    LIMIT 1;

    IF voter_age >= 18 THEN
        SET msg = 'Eligible to vote';
    ELSE
        SET msg = 'Not eligible to vote';
    END IF;
END $$

DELIMITER ;

    
    set @msg = ' ' ;
    call checkvoter(3, @msg) ;
    select @msg ;
 


    

  
  
  
  
