USE `littlelemondb`;

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
















