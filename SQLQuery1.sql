use master;
create database campany
on(
name=Em_Data,
filename='D:\data base\Em_Data.mdf',
Size=10,
MaxSize=50,
FileGrowth=5
)
LOG on(
Name=Em_Log,
filename='D:\data base\Em_Log.ldf',
Size=10,
MaxSize=50,
FileGrowth=5
)
/*you should write the use data base you want to create a table in it*/
use campany;
create table EMPLOYEES(
EmployeeID int primary key,
Name varchar(50) not null,
Age int check(Age between 22 and 45),
Phone varchar(12) unique,
Salary decimal check(salary between 3000 and 10000)
)

/*this is the first task*/