USE `littlelemondb`;

# *******************************************************#
# Insert query to populate "Orders" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO Orders (OrderID, OrderDate, Quantity, TotalCost, MenuID, CustomerID)
VALUES
(1, '2023-09-30', 2, 86, 1, 1 ),
(2, '2023-09-27', 1, 37, 2, 2 ),
(3, '2023-09-24', 1, 37, 2, 3 ),
(4, '2023-09-21', 1, 40, 3, 4 ),
(5, '2023-10-30', 4, 176, 1, 1 ),
(6, '2023-10-03', 1, 43, 1, 5 );


# *******************************************************#
# Insert query to populate "Address" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO Address (AddressID, Street, City, State, ZipCode)
VALUES
(1, '624 Parsley Lane', 'Old Town, Chicago', 'IL', '60610'),
(2, '234 Dill Square', 'Lincoln Park, Chicago',  'IL', '60614'),
(3, '679 Sage Street', 'West Loop, Chicago', 'IL', '60606'),
(4, '332  Bay Lane', 'Chicago', 'IL', '60602'),
(5, '789 Thyme Square', 'EdgeWater, Chicago', 'IL', '60660'),
(6, '435 Dill Square', 'Lincoln Park, Chicago', 'IL', '60614'),
(7, '579 Sage Street', 'West Loop, Chicago', 'IL', '60606'),
(8, '222  Bay Lane', 'Chicago', 'IL', '60602');


# *******************************************************#
# Insert query to populate "Delivery" table:
# *******************************************************#
INSERT INTO Delivery (DeliveryID, DeliveryDate, DeliveryStatus, Comment, OrderID, AddressID, StaffID)
VALUES
(1, '2023-10-06', 'Preparing order ...', 'Hand the order to the caregiver.', 1, 1, 7),
(2, '2023-10-03', 'Preparing order ...', 'Dog owner.', 2, 5, 7),
(3, '2023-09-25', 'Preparing order ...', 'Grandma is hard of hearing. Please bang on the door three times.', 3, 3, 7),
(4, '2023-09-22', 'Preparing order ...', 'Porch Pirates. Place the order behind the pot next to the door.', 4, 4, 7),
(5, '2023-10-31', 'Preparing order ...', 'Porch Pirates. Place the order behind the sofa in the patio.', 5, 8, 7),
(6, '2023-10-04', 'Preparing order ...', 'Grandma is hard of hearing. Please bang on the door three times.', 6, 3, 7);

