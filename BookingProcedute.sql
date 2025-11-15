USE littlelemondm;

DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //

CREATE PROCEDURE CheckBooking (IN BookDate DATE, IN TableNo INT)
BEGIN
	DECLARE NoTable INT;
    
	SELECT TableNumber INTO NoTable
    FROM Bookings
    WHERE  BookingDate = BookDate AND TableNo = TableNumber;
    
    SELECT
		CASE
			WHEN ISNULL(NoTable) THEN CONCAT('Table ',TableNo, ' is not booked') 
            ELSE CONCAT('Table ', TableNo, ' is already booked')
		END 
	AS 'Booking Status';
		
    
END //

DELIMITER ;

CALL CheckBooking("2022-11-12",3);
