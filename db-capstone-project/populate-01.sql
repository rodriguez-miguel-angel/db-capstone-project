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

