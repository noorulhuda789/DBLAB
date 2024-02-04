
Select *
FRom orders
where ShippedDate > RequiredDate;


Select distinct(Country)
from Employees;

Select Count(distinct(Country))
from Employees;

Select *
from Employees
Where ReportsTo is Null;

Select ProductName
from Products
Where Discontinued = 'True';

SELECT OrderID
FROM [Order Details]
WHERE Discount =0;

Select ContactName
From Customers
Where Region is Null;

Select ContactName,Phone
from Customers
Where Country ='UK' or Country ='USA';

Select CompanyName
From Suppliers
Where HomePage is Not Null;

SELECT ShipCountry
FROM Orders
WHERE Year(ShippedDate) = 1997;


select  CustomerID
From Orders
Where ShipRegion is Null;

Select SupplierID,CompanyName,City
From Suppliers;

Select *
From Employees
Where City='London';


Select ProductName
from Products
Where Discontinued = 'False';

SELECT OrderID
FROM [Order Details]
WHERE Discount <= 0.1;

select  EmployeeID,FirstName+LastName As Name,HomePhone+Extension As  contactnumberwithextensions 
From Employees
WHERE Region is Null;