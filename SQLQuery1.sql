Select  ContactTitle,Region,Country
from Customers
Where ContactTitle = Any (select ContactTitle from  Customers) And Region = Any (select Region from Customers)





Select OrderID,Sum(UnitPrice*Quantity) AS saleprice
From [Order Details]
Where (UnitPrice*Quantity)>1000
Group by  OrderID;

Select ProductName
From Products
where UnitsInStock<UnitsOnOrder;