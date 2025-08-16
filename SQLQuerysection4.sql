select LastName ,salary,ManagerID
from Employees
where LastName='Wang';

/*look the double quotation make when the varaible name contain the space*/
select FirstName,LastName,Salary,salary*2 as "The Bonus"
from Employees;

/*look the [] make when the varaible name contain the space*/
select FirstName,LastName,Salary,salary*2 as [The Bonus]
from Employees;

/* if you want to make concatenat for two strings */
select FirstName+' '+LastName as[FullName],
EmployeeID [numId]
from Employees;
/*
Note:: you can write the identefier Name of(new Column) without AS keyWord 
*/


/*A literal is a character, a number, or a date included in the SELECT list*/
select FirstName +'''s LastName '+ LastName [FullName]
from Employees


/*advanced function*/
SELECT CONCAT(FirstName, '''s LastName ', LastName) AS [FullName]
FROM Employees;

/*
q1:: why there is a doublicate in the DepartmentId??
Ans:: beacause DepartmentID is a forigenID in the Employees column and it allowed to be doublicted in this table only
*/


/*The default display of queries is all rows, including duplicate rows*/
select DepartmentID from Employees


/*Eliminate duplicate rows by using the DISTINCT keyword in the SELECT clause*/
select  Distinct DepartmentID from Employees

/* to make combination for two column in the database and it should be distinct and the same type using union keyword*/
select FirstName AS[NAme]
from Employees
union 
select LastName As[Name]
from Employees

/*INTERSECT  in SQL it display the all employee that works in two department*/
SELECT EmployeeID, EmployeeName FROM HR_Department
INTERSECT
SELECT EmployeeID, EmployeeName FROM IT_Department;


/*EXCEPT  in SQL it display the all employee that works HR only */
SELECT EmployeeID, EmployeeName FROM HR_Department
EXCEPT
SELECT EmployeeID, EmployeeName FROM IT_Department;


/*Using BETWEEN operator to specify a range:*/
select FirstName ,Salary from Employees
where Salary between 20000 and 40000



/*Using IN / NOT IN to specify a set of values:*/
select FirstName ,LastName,ManagerID from Employees
where ManagerID in(109,3,16)
/*ths conditoin is equal to=>>*/
select FirstName ,LastName,ManagerID from Employees
where ManagerID=109 or ManagerID=16 or ManagerID=3;



/*Using LIKE operator to specify a pattern:*/
/*search for the name that is start with s */
SELECT FirstName FROM Employees
WHERE FirstName LIKE 'S%'

/*search for the name tht is end with s */
SELECT FirstName FROM Employees
WHERE FirstName LIKE '%S'

/*search for the name tht is contain s inany position*/
SELECT FirstName FROM Employees
WHERE FirstName LIKE '%S%'


/*Checking for NULL value:*/
SELECT LastName, ManagerId FROM Employees
WHERE ManagerId IS NULL

/*Checking for not NULL value:*/
SELECT LastName, ManagerId FROM Employees
WHERE ManagerId IS NOT NULL



/*Attention: COLUMN=NULL is always false!*/
/*null==null*/
SELECT LAST_NAME, MANAGER_ID FROM EMPLOYEES
WHERE NULL = NULL
/*always return false*/
SELECT LASTNAME, MANAGERID FROM EMPLOYEES
WHERE MANAGERID = NULL



/*Using NOT, OR and AND operators and brackets:*/
select FirstName,LastName from Employees
where Salary>=30000 And LastName like 'c%'

SELECT LastName FROM Employees
WHERE ManagerID IS NOT NULL OR LastName LIKE '%so_'

SELECT LastName FROM Employees
WHERE LastName LIKE '%so_'

select LastName from Employees
where ManagerID=3 or ManagerID=4

select LastName from Employees
where not(ManagerID=3 or ManagerID=4)


/*select from the firstName and last name that make all conditoins is true*/
SELECT FirstName, LastName,ManagerID FROM Employees
WHERE
    (ManagerID = 3 OR ManagerID = 4) AND
    (Salary >= 20000 OR ManagerID IS NULL)



/*
ASC: ascending order, default
DESC: descending order
*/
/*isplay the salaries from large to small by default*/
SELECT LastName, HireDate FROM Employees ORDER BY HireDate DESC
/*isplay the salaries from small to large by default*/
SELECT LastName, Salary FROM Employees ORDER BY Salary 

/*if you want to maek order by fullName*/
select FirstName+' '+LastName as[fullName]
from Employees order by Len(FirstName+' '+LastName)


/*if you want to maek order by fullName*/
SELECT FirstName, LastName AS [fullName]
FROM Employees 
ORDER BY LEN(FirstName + ' ' + LastName);


