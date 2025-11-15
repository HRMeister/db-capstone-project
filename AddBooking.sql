USE littlelemondm;

DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //

CREATE PROCEDURE AddBooking (IN staffID INT, IN customerID INT, IN bookingDate DATE, IN tableNumber INT)
BEGIN
	INSERT INTO Bookings (BookingDate, TableNumber, CustomerID, StaffID) VALUES (bookingDate, tableNumber, customerID, staffID);
	SELECT "New booking added" AS 'Confirmation';
END //

DELIMITER ;

CALL AddBooking(4, 3, '2022-12-20',6);

