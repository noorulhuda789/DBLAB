/*Select *
From [Student-Lab]

Select FirstName,Contact
From [Student-Lab]

Select *
From [Student-Lab]
Where GPA <3.5

Select *
From [Student-Lab]
Where GPA >=3.5
 
 Select *
From [Student-Lab]
Where GPA is Null


Select FirstName+LastName
From [Student-Lab]*/

Select *
From Customers;

Select CompanyName
From Customers
Where CompanyName Like '%A%';

Select *
From Customers
Where CompanyName Like '%A_o%';

Select *
From Customers
Where CompanyName Like '%A%' And City='London';


Select *
From Customers
Where CompanyName Like '%A%' OR City='London';

Select *
From Customers
Where CompanyName  Not Like '%A%' And City='London';

Select *
From Customers
Where Country <> 'UK'

Select CompanyName+ContactTitle As INfo
From Customers

Select distinct(Country)
From Customers

Select *
From Customers
Where (CompanyName  Like '%A%') And City='London';

Select SupplierID,UnitPrice,CategoryID
From Products
Where (SupplierID >2 ) and UnitPrice>10  And  CategoryID >5 ;

Select SupplierID,UnitPrice,CategoryID
From Products
Where SupplierID >2   or (UnitPrice>10) And  CategoryID >5 ;

select  SupplierID
From Products
Where SupplierID>2
Order By SupplierID ASC ;

select  TOP(10) SupplierID
From Products
Where SupplierID>2
Order By SupplierID ASC ;