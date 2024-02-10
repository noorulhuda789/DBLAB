SELECT ProductName
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

select ShippedDate,Count(*) As numberoforders
From Orders
Group By ShippedDate
Order By ShippedDate;


Select Country 
From Suppliers
Group By Country
Having Count(*)>=2;

Select Distinct(Month(ShippedDate)) AS [Month Number],Count(*) AS  [Orders Delayed]
from Orders
Where RequiredDate<ShippedDate
Group By Month(ShippedDate)
Order By Month(ShippedDate);



Select o.OrderID,Sum(Discount) AS Discount
From [Order Details] o
Where Discount>0
GRoup By  OrderID
Order By o.OrderID;


Select ShipCity,Count(*) AS  Numberoforders
From Orders
Where ShipCountry='USA'
AND Year(ShippedDate)=1997
GRoup By ShipCity;

Select Distinct(ShipCountry) AS Country,Count(*) AS  [Orders Delayed]
from Orders
Where RequiredDate<ShippedDate
Group By ShipCountry
 

Select o.OrderID,Sum(Discount) AS Discount,Sum((UnitPrice*Quantity)+((UnitPrice*Quantity)/Discount) ) AS TotalPrice
From [Order Details] o
Where Discount>0
GRoup By  OrderID
Order By o.OrderID;

Select ShipRegion, ShipCity,Count(*) AS  Numberoforders
From Orders
Where Year(ShippedDate)=1997 AND ShipRegion is Not Null
GRoup By ShipCity,ShipRegion;




