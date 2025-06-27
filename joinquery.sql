SELECT Customers.CustomerID, 
	   CONCAT(Customers.FirstName,' ',Customers.LastName) AS FullName,
       Orders.OrderID, Orders.TotalCost,
       Menu.MenuName,
       MenuItems.Courses, MenuItems.Starters
FROM Customers INNER JOIN Bookings ON Customers.CustomerID = Bookings.CustomerID
INNER JOIN Orders ON Bookings.BookingID = Orders.BookingID
INNER JOIN Menu ON Menu.MenuID = Orders.MenuID
INNER JOIN MenuItems ON MenuItems.MenuItemsID = Menu.MenuItemsID
WHERE Orders.TotalCost > 50
ORDER BY Orders.TotalCost ASC;
  