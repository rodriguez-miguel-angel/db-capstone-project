USE `littlelemondb`;

CREATE  OR REPLACE VIEW `OrdersView` AS
Select OrderID, Quantity, TotalCost from Orders
where Quantity > 2;

CREATE  OR REPLACE VIEW `LittleLemonJoinView` AS
Select c.CustomerID, concat(c.FirstName, ' ', c.LastName) as FullName, o.OrderID, o.TotalCost, m.Name, MenuItems.MenuItemName 
from Customers as c
inner join Orders as o on o.CustomerID = c.CustomerID
inner join Menus as m on m.MenuID = o.MenuID
inner join MenuItems on MenuItems.MenuItemID = m.MenuItemID 
where o.TotalCost > 150
order by o.TotalCost;

CREATE  OR REPLACE VIEW `LittleLemonSubqueryView` AS
Select m.Name, m.MenuItemID, MenuItems.MenuItemName from Menus as m
inner join MenuItems on MenuItems.MenuItemID = m.MenuItemID
where m.MenuID = any (select o.MenuID from Orders as o where o.Quantity > 2);


