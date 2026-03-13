with all_orders as(

SELECT OrderID, CustomerID, ProductID, OrderDate, Quantity,Revenue, COGS
FROM Orders_2023

UNION all

SELECT OrderID, CustomerID, ProductID, OrderDate, Quantity,Revenue, COGS
FROM Orders_2024

UNION all

SELECT OrderID, CustomerID, ProductID, OrderDate, Quantity,Revenue, COGS
FROM Orders_2025)

select a.OrderID, 
a.CustomerID, 
c.Region, 
a.ProductID, 
a.OrderDate, 
c.CustomerJoinDate, 
a.Quantity, 
a.Revenue, 
CASE WHEN a.Revenue is NULL then p.Price * a.Quantity else a.Revenue
end AS CleanedRevenue,
a.Revenue - a.COGS AS Profit,
a.COGS,
p.ProductName,
p.ProductCategory,
p.Price,
p.Base_Cost
from all_orders as a
left join customers c
on a.CustomerID = c.CustomerID
left join products p 
on a.ProductID = p.ProductID
where a.CustomerID is not NULL 