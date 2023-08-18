DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `AddBooking`(IN booking_id INT, IN customer_id INT, IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE default_booking_slot TIME DEFAULT '15:00:00';                  -- Local variable default_booking_slot with declared and assigned
START TRANSACTION; 
	
	# see if customer exists
	SELECT @result:= count(CustomerID) FROM Customers where CustomerID in (customer_id);

	IF (@result = 0) THEN 
		SELECT	'Error. Customer does not exists in the database.';
		ROLLBACK;
	ELSE
		# see if table_number is an appropriate input
		if table_number in (2, 3, 4, 5, 6, 10, 15) THEN
			REPLACE INTO Bookings(BookingID, BookingDate, BookingSlot, TableNumber, CustomerID) 
			VALUES (booking_id, booking_date, default_booking_slot, table_number, customer_id);
			Select 'Booking added' as Confirmation; 
		else
			select 'Error. Review possible values for Table Number.';
		COMMIT;
		END IF;
	END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `AddValidBooking`(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE testing_customer_id INTEGER DEFAULT 13;                  -- Local variable testing_customer_id with declared and assigned 13
START TRANSACTION; 
	
	SELECT @result:= count(BookingID) FROM Bookings as b where b.BookingDate in (booking_date) AND b.TableNumber in (table_number);

	IF (@result > 0) THEN 
		SELECT	(select concat('Table ', table_number, ': UNAVAILABLE. Booking cancelled. :-(') FROM Bookings as b
		where b.BookingDate in (booking_date) AND b.TableNumber in (table_number)) AS 'Booking Status';
		ROLLBACK;
	ELSE 
		INSERT INTO Bookings(BookingDate, BookingSlot, TableNumber, CustomerID) VALUES (booking_date, '15:00:00', table_number, testing_customer_id); 
		COMMIT;
	END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `CancelBooking`(IN booking_id INT)
BEGIN
START TRANSACTION; 
	
	# see if booking exists
	SELECT @result:= count(BookingID) FROM Bookings where BookingID in (booking_id);

	IF (@result = 0) THEN 
		SELECT	'Error. This Booking does not exists in the database.';
		ROLLBACK;
	ELSE
		DELETE FROM Bookings where BookingID in (booking_id);
		Select concat('Booking with id ', booking_id, ' has been cancelled.') as Confirmation; 
		COMMIT;
		
	END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `CancelOrder`(IN order_id INT)
BEGIN
delete from Orders where OrderID = order_id;
select concat('Order cancelled with ID: ', order_id ,'.') as Confirmation;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `CheckBooking`(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE confirmation varchar(255);
SELECT 
(select concat('Table ', table_number, ': BOOKED. :-(') FROM Bookings as b
where b.BookingDate in (booking_date) AND b.TableNumber in (table_number)) into confirmation;
select confirmation AS 'Booking Status'; 
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
Select max(Quantity) as 'Orders[Max Quantity]' from Orders;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`db-capstone-user`@`%` PROCEDURE `UpdateBooking`(IN booking_id INT, IN booking_date DATE)
BEGIN
START TRANSACTION; 
	
	# see if booking exists
	SELECT @result:= count(BookingID) FROM Bookings where BookingID in (booking_id);

	IF (@result = 0) THEN 
		SELECT	'Error. Booking does not exists in the database.';
		ROLLBACK;
	ELSE
		# see if booking_date is an appropriate input
		if booking_date > '2022-01-01' THEN
			UPDATE Bookings SET BookingDate = booking_date where BookingID in (booking_id);
			Select 'Booking updated' as Confirmation; 
		else
			select 'Error.';
		COMMIT;
		END IF;
	END IF;
END$$
DELIMITER ;


