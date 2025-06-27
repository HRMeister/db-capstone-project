USE LittleLemonDM;

-- ==============================
-- Tabla Customers
-- ==============================
INSERT INTO Customers (FirstName, LastName, PhoneNumber) VALUES
('John', 'Doe', '123456789'),
('Jane', 'Smith', '987654321'),
('Alice', 'Johnson', '555555555'),
('Bob', 'Brown', '111222333');

-- ==============================
-- Tabla Staff
-- ==============================
INSERT INTO Staff (FirstName, LastName, Role, Salary) VALUES
('Carlos', 'Gomez', 'Waiter', 25000),
('Laura', 'Fernandez', 'Manager', 40000),
('Miguel', 'Lopez', 'Chef', 35000),
('Ana', 'Sanchez', 'Waiter', 26000);

-- ==============================
-- Tabla MenuItems
-- ==============================
INSERT INTO MenuItems (Courses, Starters, Drinks, Desserts) VALUES
('Pasta', 'Bruschetta', 'Wine', 'Tiramisu'),
('Steak', 'Salad', 'Beer', 'Cheesecake'),
('Pizza', 'Garlic Bread', 'Soda', 'Gelato'),
('Fish', 'Soup', 'Water', 'Fruit Salad');

-- ==============================
-- Tabla Menu
-- ==============================
INSERT INTO Menu (Cuisine, MenuName, MenuItemsID) VALUES
('Italian', 'Italian Delight', 1),
('Grill', 'Grill Special', 2),
('Fast Food', 'Pizza Combo', 3),
('Seafood', 'Ocean Fresh', 4);

-- ==============================
-- Tabla Bookings
-- ==============================
INSERT INTO Bookings (BookingDate, TableNumber, CustomerID, StaffID) VALUES
('2022-10-10', 5, 1, 3),  -- John Doe atendido por Miguel Lopez
('2022-11-12', 3, 3, 4),  -- Alice Johnson atendida por Ana Sanchez
('2022-10-11', 2, 2, 1),  -- Jane Smith atendida por Carlos Gomez
('2022-10-13', 2, 1, 2);  -- John Doe atendido por Laura Fernandez

-- ==============================
-- Tabla Orders
-- ==============================
INSERT INTO Orders (OrderDate, Quantity, TotalCost, MenuID, BookingID) VALUES
('2022-10-10', 2, 50.00, 1, 1),
('2022-11-12', 3, 75.00, 2, 2),
('2022-10-11', 1, 25.00, 3, 3),
('2022-10-13', 4, 100.00, 4, 4);

-- ==============================
-- Tabla OrderStatus
-- ==============================
INSERT INTO OrderStatus (DeliveryDate, Status, OrderID) VALUES
('2022-10-10', 'Delivered', 1),
('2022-11-12', 'In Progress', 2),
('2022-10-11', 'Delivered', 3),
('2022-10-13', 'Cancelled', 4);

