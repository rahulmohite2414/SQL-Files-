use bankingdb;
select * from customers;
select firstname, lastname, email, phone from customers;
select * from accounts;
select * from accounts where accounttype = "savings";
desc accounts;
select * from accounts where balance > 25000;
select * from accounts where balance between 5000 and 20000;
select * from customers
where customerID in (101, 102, 103);
select * from customers where
firstname like 'r%';
select * from accounts where accountType = 'current';
select * from accounts where balance > 1500;
select * from transactions where amount between 1000 and 10000;
select * from customers where customerID in (104,106);
select * from customers where lastname like "s%";
select * from customers order by firstname asc;
select * from accounts order by balance desc;
select distinct accountType from accounts;
select * from accounts order by  balance desc limit 5;
select * from transactions limit 5 offset 3;

-- Display customers sorted by lastname
select * from customers order by lastname ;

-- Retrieve top 5 transactions with highest amount 
select * from transactions order by amount desc limit 5 ;

-- Display unique transactions types 
select distinct transactiontype from transactions;

-- skip the first 3 transaction records and display the next 4 records
select * from transactions limit 4 offset 3;


select accountID, balance,
 case
 when balance >=50000 then "premium account"
 when balance >= 25000 then "standard Account" 
 else "Basic Account"
 end as " Account_Category" 
 from accounts;
 
 select TransactionID,
Amount,
 case
 when amount >= 40000 then "high Transactions"
 when amount >= 20000 then "Mideum Transaction"
 else "low Transaction" end as "Transaction category"
 from transactions;


 