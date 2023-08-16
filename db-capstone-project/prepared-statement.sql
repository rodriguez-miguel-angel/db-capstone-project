use littlelemondb;

PREPARE GetOrderDetail From 'Select OrderID, Quantity, TotalCost From Orders where CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

