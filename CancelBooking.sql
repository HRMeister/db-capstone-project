USE littlelemondm;

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking (IN booking_ID INT)
BEGIN
	DELETE FROM Bookings 
    WHERE BookingID = booking_ID;
    
	SELECT CONCAT("Booking ", booking_ID, " cancelled") AS 'Confirmation';
END //

DELIMITER ;

CALL CancelBooking(7);
