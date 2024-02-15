Select c.CustomerID,o.OrderID,o.OrderDate

From Orders o right join Customers c
on  o.CustomerID=c.CustomerID
Where  c.CustomerID  <> All (select o.CustomerID  from Orders o) or  o.CustomerID=c.CustomerID 
order by c.CustomerID Asc

Select c.CustomerID,o.OrderID,o.OrderDate

From Orders o right join Customers c
on  o.CustomerID=c.CustomerID
Where  c.CustomerID  <> All (select o.CustomerID  from Orders o)
order by c.CustomerID Asc

Select c.CustomerID,Count(o.orderID) as totalorders
From Customers c ,Orders o
where c.CustomerID=o.CustomerID
group by (c.CustomerID)



