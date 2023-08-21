USE `littlelemondb`;

CREATE TRIGGER NotifyOrderDelete 
    AFTER DELETE   
    ON Orders FOR EACH ROW   
	INSERT INTO Notifications(Notification, DateTime) 
    VALUES(CONCAT('The order with a OrderID ', OLD.OrderID,' was deleted'), NOW()); 

CREATE TRIGGER NotifyBookingDelete 
    AFTER DELETE   
    ON Bookings FOR EACH ROW   
	INSERT INTO Notifications(Notification, DateTime) 
    VALUES(CONCAT('The booking with a BookingID ', OLD.BookingID,' was deleted'), NOW()); 