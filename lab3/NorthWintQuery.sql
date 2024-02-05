
Select OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,
ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,
ShipRegion,ShipPostalCode,ShipCountry
FRom Orders
where ShippedDate > RequiredDate;


Select distinct(Country)
from Employees;



Select  EmployeeID,LastName,FirstName,TitleOfCourtesy,
HireDate,Address,City,Region,PostalCode,Country,HomePhone,
Extension, Photo,Notes,ReportsTo,PhotoPath
from Employees
Where ReportsTo is Null;

Select ProductName
from Products
Where Discontinued = 'True';

SELECT Distinct OrderID
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

SELECT Distinct ShipCountry
FROM Orders
WHERE Year(OrderDate) = 1997;


select  CustomerID
From Orders
Where  ShippedDate is NULL;

Select SupplierID,CompanyName,City
From Suppliers;

Select EmployeeID,LastName,FirstName,TitleOfCourtesy,HireDate,Address,City,Region,PostalCode,Country,HomePhone,Extension,Photo,Notes,ReportsTo,PhotoPath
From Employees
Where City='London';


Select ProductName
from Products
Where Discontinued = 'False';

SELECT Distinct OrderID
FROM [Order Details]
WHERE Discount <= 0.1;

select  EmployeeID,FirstName+LastName As Name,HomePhone+Extension As  contactnumberwithextensions 
From Employees
WHERE Region is Null;