USE `littlelemondb`;

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

