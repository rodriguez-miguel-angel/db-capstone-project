USE `littlelemondb`;

# *******************************************************#
# Insert query to populate "Staff" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#

INSERT INTO Staff (StaffID, FirstName, LastName, Email, ContactNumber, Role, Salary) VALUES
(1, 'Mario', 'Gollini', 'Mario.g@littlelemon.com', '773-258-2074', 'Manager', 70000.00),
(2, 'Adrian', 'Gollini', 'Adrian.g@littlelemon.com', '312-147-4048', 'Assistant Manager', 65000.00),
(3, 'Giorgos', 'Dioudis','Giorgos.d@littlelemon.com', '312-519-7058', 'Head Chef', 50000.00),
(4, 'Fatma', 'Kaya', 'Fatma.k@littlelemon.com', '872-351-9635', 'Assistant Chef', 45000.00),
(5, 'Elena', 'Salvai', 'Elena.s@littlelemon.com','773-351-4198', 'Head Waiter', 40000.00),
(6, 'John', 'Millar','John.m@littlelemon.com','650-351-5845', 'Receptionist', 35000.00),
(7, 'John', 'Doe','John.d@littlelemon.com','702-651-1234', 'Delivery Driver', 35000.00);


# *******************************************************#
# Insert query to populate "Customers" table:
# *******************************************************#

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, ContactNumber) VALUES
(01, 'Mario', 'Lopez', 'Lopez.Mario@abc.com', '213-458-2055'),
(02, 'Adrian', 'Ruiz', 'Ruiz.Adrian@cpl.com', '650-219-1448'),
(03, 'Hunter', 'Biden','Biden.Hunter@cpl.com', '415-786-1058'),
(04, 'Fatima', 'Jimenez', 'Jimenez.Fatima@abc.com', '408-680-6914'),
(05, 'Elena', 'McCarthy', 'McCarthy.Elena@abc.net','773-858-9856'),
(06, 'Juan', 'Doe','Doe.John@cal.com','312-456-4558'),
(07, 'Anna', 'Iversen', 'Iversen.Anna@mci.com', '872-651-9655'),
(08, 'Joakim', 'Iversen', 'Iversen.Joakim@mci.com', '872-651-0855'),
(09, 'Vanessa', 'McCarthy', 'McCarthy.Vanessa@abc.net','773-858-9816'),
(10, 'Marcos', 'Romero', 'Romero.Marcos@abc.com', '707-680-1265'),
(11, 'Hiroki', 'Yamane', 'Yamane.Hiroki@beans.com', '206-952-6969'),
(12, 'Diana', 'Pinto', 'Pinto.Diana@beans.com', '281-580-9876');


# *******************************************************#
# Insert query to populate "Bookings" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO Bookings (BookingID, BookingDate, BookingSlot, TableNumber, Comment, CustomerID)
VALUES
(1, '2023-12-31', '19:00:00', 12, 'Celebrating girls night.', 7),
(2, '2023-11-30', '19:00:00', 2, 'Celebrating an anniversary.', 8),
(3, '2023-10-31', '15:00:00', 4, 'Food Allergy: Nutz.', 9),
(4, '2023-12-31', '17:30:00', 15, 'Celebrating a graduation.', 10),
(5, '2023-11-12', '18:30:00', 5, 'Outdoor seating near a gaslamp.', 11),
(6, '2023-10-24', '20:00:00', 2, 'Food Allergy: Shellfish.', 12);


# *******************************************************#
# Insert query to populate "Category" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO Category (CategoryID, Title)
VALUES
(1, 'Starters'),
(2, 'Main Courses'),
(3, 'Desserts'),
(4, 'Drinks');


# *******************************************************#
# Insert query to populate "MenuItem" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO MenuItems (MenuItemID, MenuItemName, Price, Inventory, CategoryID)
VALUES
(1, 'Olives', 3.50 ,5, 1),
(2, 'Flatbread', 6.50, 5, 1),
(3, 'Minestrone', 5.50, 8, 1),
(4, 'Tomato bread', 8.50, 8, 1),
(5, 'Falafel', 8.50, 7, 1),
(6, 'Hummus', 8.50, 5, 1),
(7, 'Greek salad', 12.50, 15, 2),
(8, 'Bean soup', 9.50, 12, 2),
(9, 'Pizza', 14.50, 15, 2),
(10, 'Greek yoghurt', 6.00, 7, 3),
(11, 'Ice cream', 6.00, 6, 3),
(12, 'Cheesecake', 9.00, 4, 3),
(13, 'Athens White wine', 24.99, 12, 4),
(14, 'Corfu Red Wine', 32.99, 15, 4),
(15, 'Turkish Coffee', 6.99, 10, 4),
(16, 'Soda', 2.99, 30, 4),
(17, 'Kabasa', 22.99, 17, 2);


# *******************************************************#
# Insert query to populate "CuisineCategory" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO CuisineCategory (CuisineCategoryID, Title)
VALUES
(1, 'Greek'),
(2, 'Italian'),
(3, 'Turkish');


# *******************************************************#
# Insert query to populate "Menu" table:
# Original SOURCE [Course: Database Clients. Exercise: Working with cursors.]
# *******************************************************#
INSERT INTO Menus (MenuID, MenuItemID, Name, CuisineCategoryID)
VALUES
(1, 1, 'Lunch', 1),
(1, 7, 'Lunch', 1),
(1, 3, 'Lunch', 2),
(1, 9, 'Lunch', 2),
(2, 10, 'Dinner', 1),
(2, 13, 'Dinner', 1),
(2, 12, 'Dinner', 2),
(2, 15, 'Dinner', 2),
(3, 5, 'Brunch', 3),
(3, 17, 'Brunch', 3),
(3, 11, 'Brunch', 3),
(3, 16, 'Brunch', 3);


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


# *******************************************************#
# Insert query to populate "Bookings" table:
# Little Lemon wants to populate the Bookings table of their database with some records of data.
# Replicate the list of records in the given table by adding them to the Little Lemon booking table. 
# *******************************************************#
INSERT INTO Bookings (BookingID, BookingDate, BookingSlot, TableNumber, Comment, CustomerID)
VALUES
(11, '2022-10-10', '20:00:00', 5, 'Celebrating girls night.', 1),
(12, '2022-11-12', '20:30:00', 3, 'Celebrating a birthday.', 3),
(13, '2022-10-11', '18:00:00', 2, 'Food Allergy: Nutz.', 2),
(14, '2022-10-13', '17:30:00', 2, 'Celebrating an anniversary.', 1);


