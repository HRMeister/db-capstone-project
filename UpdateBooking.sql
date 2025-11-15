USE littlelemondm;

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking (IN booking_ID INT, IN booking_Date DATE)
BEGIN
	UPDATE Bookings SET BookingDate = booking_Date 
    WHERE BookingID = booking_ID;
    
	SELECT CONCAT("Booking ", booking_ID, " updated") AS 'Confirmation';
END //

DELIMITER ;

CALL UpdateBooking(7, '2022-12-19');

