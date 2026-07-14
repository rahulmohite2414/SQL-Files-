
use bankingdb;
Show databases;
create table customer(customerID int primary key, 
FirstName Varchar(50),
LastName Varchar(50),
Email Varchar(100),
Phone Varchar(15),
AccountCreationDate date);
desc customer;
Create table Accounts(AccountID int primary key, customerID int,  Accounttype varchar(20), balance decimal(10, 2), foreign key(customerID) references customer(customerID));
desc Accounts;
Create table Transactions(transactionID int primary key, AccountID int, TransactionDate  Date, Amount decimal(10, 2), TransactionType varchar(20), Foreign key(AccountID) references Account(AccountID));
desc Transactions;
Create Table Branches(BranchID int primary key, BranchName Varchar(100), BranchAddress varchar(200), Branchphone Varchar(15));
desc Branches;
Create table AccountBranches(AccountID int, BranchID int, AssignmenDate date, foreign key(AccountId) references Accounts(AccountID), foreign key(BranchID) references Branches(BranchID)); 
desc AccountBranches;
create table Loans(LoanID int primary key, CustomerID int, LoanAmount decimal(10,2), InterestRate decimal(10,2), StartDate date, Enddate date, foreign key(CustomerID) references customer(customerID));
desc Loans;

alter table Accounts 
add constraint chk_MinBalance 
check (Balance >=1000);

Drop Table AccountBranches;

Alter table Customers
modify FirstName varchar(50) Not Null;

Alter Table customers
Add constraint uq_Email unique (Email);

insert into Customers 
VALUES(102, 'Priya', 'Patil', 'Priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

insert into customers value(101,'raj','pawar','Raj@gmail.com','6677889900','2021-05-03','1999-02-09'),(103,'Rahul','Mohite','Rahul@gmail.com','9988776655','2024-4-02','1999-08-19'),(104,'Prithvi','Deshmukh','Prithvi@gmail.com','2233445566','2023-03-01','1998-01-08'),(105,'Nishant','Shinde','Nishant@gmail.com','5577990011','2022-02-05','1997-02-07'),(106,'Prathmesh','Kadam','Prathmesh@gmail.com','4466882255','2021-01-04','1996-01-06');

insert into Accounts values (202,102, 'current', 40000);

Insert into accounts values (203,103, 'Saving', 25000),(204,104, 'Salary', 30000),(205,105, 'current', 55000),(206,106, 'Saving', 60000),(207,107, 'salary', 25000);

desc accounts;
select* from accounts;
select* from customers;

insert into Transactions 
values (301,103,'2024-04-02',25000,'cash');

insert into Transactions
values(304,202,'2023-03-01',30000,'card');

desc transactions;
select * from accounts;

update customers
set phone = 9999999999
where customerID = 101;

update customers
set Email = 'priya.patil@gmail.com' where customerID = 102;

update Accounts
set balance = 30000
where AccountID = 201;

delete from transactions
where TransactionID = 301;
select* from transactions;

delete from Accounts
where AccountID = 201;

select * from Accounts
where AccountID = 201;

desc accounts;

select* from accounts
where AccountID = 201;

select* from customers
where customerID=101;

select* from customers where CustomerID=102;
select* from Transactions;

desc transactions;

select* from walmart;
select* from walmart where unit_price > 1500;
select* from walmart where unit_price > 1500 and product_name = "camera";
select* from walmart where product_name = "camera";
select* from walmart where unit_price > 1500 or product_name = "Camera";
desc walmart;
show table status;

select* from walmart where product_name in ("camera","AC", "Fridge", "TV", "Laptop");
select* from walmart where product_name not in ("camera","AC", "Fridge", "TV", "Laptop");
select* from walmart where unit_price between 1000 and 1500;
select* from walmart where unit_price  not between 1000 and 1500;
select* from walmart where product_name like "s%";
select* from walmart where store_location like "M%";

use bankingdb;
show tables;

use st;
create table abc(nm varchar(100), age int, city varchar(50));

insert into abc (nm, age, city) values
('Amit Sharma', 25, 'Pune'),
('Anita Patil', 28, 'Mumbai'),
('Ajay Kumar', 30, 'Delhi'),
('Akash Verma', 22, 'Nagpur'),
('Aarti Joshi', 27, 'Nashik'),
('Bhavesh Shah', 35, 'Ahmedabad'),
('Bina Patel', 29, 'Surat'),
('Chetan Mehta', 31, 'Vadodara'),
('Charu Singh', 24, 'Jaipur'),
('Deepak Yadav', 32, 'Lucknow'),
('Divya Gupta', 26, 'Kanpur'),
('Dinesh Rao', 38, 'Hyderabad'),
('Esha Kapoor', 23, 'Delhi'),
('Farhan Khan', 34, 'Mumbai'),
('Gaurav Mishra', 29, 'Pune'),
('Geeta Sharma', 33, 'Nagpur'),
('Harish Patil', 40, 'Kolhapur'),
('Heena Shaikh', 21, 'Aurangabad'),
('Irfan Ali', 37, 'Bhopal'),
('Isha Nair', 24, 'Kochi'),
('Jay Patel', 28, 'Surat'),
('Jyoti Singh', 26, 'Jaipur'),
('Karan Malhotra', 31, 'Delhi'),
('Komal Jain', 22, 'Indore'),
('Lokesh Sharma', 36, 'Udaipur'),
('Meena Joshi', 27, 'Pune'),
('Manoj Kumar', 39, 'Patna'),
('Nikhil Verma', 25, 'Nagpur'),
('Neha Gupta', 30, 'Lucknow'),
('Omkar Deshmukh', 29, 'Pune'),
('Pooja Patil', 23, 'Mumbai'),
('Prakash Rao', 42, 'Hyderabad'),
('Qasim Sheikh', 35, 'Bhopal'),
('Rohit Sharma', 28, 'Delhi'),
('Riya Kapoor', 24, 'Mumbai'),
('Sachin Tendulkar', 45, 'Mumbai'),
('Sneha Kulkarni', 27, 'Pune'),
('Suresh Patil', 41, 'Kolhapur'),
('Tanvi Shah', 26, 'Ahmedabad'),
('Tarun Kumar', 32, 'Chennai'),
('Umesh Yadav', 37, 'Nagpur'),
('Urvashi Singh', 29, 'Jaipur'),
('Vikas Gupta', 34, 'Delhi'),
('Vaishali Patil', 25, 'Pune'),
('Wasim Khan', 31, 'Hyderabad'),
('Yash Mehta', 22, 'Surat'),
('Yogita Sharma', 28, 'Nashik'),
('Zaid Ali', 30, 'Lucknow'),
('Zoya Khan', 24, 'Mumbai'),
('Abhishek Mishra', 33, 'Indore');

select* from abc where nm like "A%";
select* from abc where nm like "%a";
select* from abc where nm like "_a%";
select* from abc where nm like "%a_";
select* from abc where nm like "e%";
select* from abc where nm like "%e%";

select* from walmart order by unit_price asc ;
select* from walmart order by unit_price desc ;
select* from walmart where product_name = "camera" order by unit_price desc ;
select* from walmart where product_name = "camera" order by unit_price asc ;
select* from walmart order by category desc ;
select* from walmart order by category desc, unit_price asc ;









 











