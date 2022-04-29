
select * from CustomerBase;
select * from CardBase ;
##joints 
select * from customerbase.CardBase as card inner join customerdetails.CustomerBase as base on cardbase.Cust_ID=customerbase.ï»¿Cust_ID;
select  ï»¿Cust_ID from CustomerBase where ï»¿Cust_ID not in (select customerbase.ï»¿Cust_ID from customerbase inner join cardbase on 
customerbase.ï»¿Cust_ID = cardbase.cust_id);

select * from cardbase inner join customerbase on cardbase.ï»¿Cust_ID = customerbase.cust_id;

select * from TransactionBase;
SELECT str_to_date();
select month(select str_to_date(Transaction_Date, "%d-%M-%y")as date from TransactionBase) from 
russia_losses_equipmentTransactionBase
select str_to_date(Transaction_Date, "%d-%M-%y")as date from TransactionBase

select month(Transaction_Date) from TransactionBase


#Analytical functions


SELECT Credit_Limit,RANK() OVER (PARTITION BY Credit_Limit order by Cust_ID) AS Rnk from customerdetails.cardbase;

SELECT Credit_Limit,ROW_NUMBER() OVER (PARTITION BY Credit_Limit order by Cust_ID) AS Rnk from customerdetails.cardbase;

 select ï»¿Cust_ID,count(ï»¿Cust_ID),Age from CustomerBase group by ï»¿Cust_ID,Age having(Age>20)
 
 
 
 DATE AND TIME
 
 select CURRENT_DATE();
 SELECT NOW()
 select customer_id,to_char(dob,'dd-mon-yyyy')dob,gender from tbl_customer
 select
 
 
 SELECT * FROM russianwar.russia_losses_equipment where date>2022-02-25;
 SELECT day,aircraft,to_char(date,'dd-mon-yyyy')date from russianwar.russia_losses_equipment;
 
 
 



