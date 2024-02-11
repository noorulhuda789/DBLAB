SELECT ProductName
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

SELECT ShippedDate, COUNT(*) AS NumberOfOrders
FROM Orders
WHERE ShippedDate IS NOT NULL
GROUP BY ShippedDate
ORDER BY ShippedDate;



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
GRoup By  OrderID
HAVING SUM(Discount) > 0
Order By o.OrderID;


Select ShipCity,Count(*) AS  Numberoforders
From Orders
HAVING ShipCountry='USA'
AND Year(ShippedDate)=1997
GRoup By ShipCity;

Select Distinct(ShipCountry) AS Country,Count(*) AS  [Orders Delayed]
from Orders
Where RequiredDate<ShippedDate
Group By ShipCountry
 

SELECT OrderID, SUM(Discount) AS Discount, SUM(UnitPrice* Quantity) AS TotalPrice
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Discount) > 0;

Select ShipRegion, ShipCity,Count(*) AS  Numberoforders
From Orders
Where Year(ShippedDate)=1997 AND ShipRegion is Not Null
GRoup By ShipCity,ShipRegion;




