show databases;
use littlelemondb;
# show tables;

# select o.Quantity from Orders as o where o.Quantity > 2

# select * from ordersview;

# Select * from LittleLemonJoinView;

# call CancelOrder(4);

# select * from Bookings;

# call CheckBooking("2022-11-12", 3);
# call CheckBooking("2022-11-12", 4);

# call AddValidBooking("2022-12-17", 6);
# call AddValidBooking("2022-12-17", 4);

# call AddBooking(29, 3, '2022-12-30', 4);
# call AddBooking(29, 3, '2022-12-30', 4);

# call UpdateBooking(29, '2022-12-30');
# call UpdateBooking(29, '2022-12-17'); 

# call UpdateBooking(29, '2022-12-19');

# call CancelBooking(30); 

call CancelBooking(29);