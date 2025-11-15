USE littlelemondm;

DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //

CREATE PROCEDURE AddValidBooking (IN BookDate DATE, IN TableNo INT)
BEGIN
	DECLARE NoTable INT;
    
	SELECT TableNumber INTO NoTable
    FROM Bookings
    WHERE  BookingDate = BookDate AND TableNo = TableNumber
    LIMIT 1;
    
    START TRANSACTION;

        IF (ISNULL(NoTable)) THEN
			INSERT INTO Bookings (BookingDate, TableNumber, CustomerID, StaffID) VALUES (BookDate, TableNo, 2,4);
			SELECT CONCAT("Table ", @NoTable, "  booked! - booking successful") AS 'Booking Status';
            COMMIT;
		ELSE
			SELECT CONCAT("Table ", @NoTable, " is already booked - booking cancelled") AS 'Booking Status';
			ROLLBACK;
			
		END IF;
			
END //

CALL AddValidBooking("2022-12-17", 6);