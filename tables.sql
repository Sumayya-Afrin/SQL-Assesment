CREATE TABLE Customers (
    CustomerID  INT Primary key,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    Email nvarchar(50),
    Phone bigint ,
    Address nvarchar(max)
	);

	

	INSERT INTO Customers VALUES
(101, 'Emily', 'Johnson', 'emily.johnson@example.com', 5551234567,'123 Maple Street,Anytown, USA'),
(102, 'Lucas', 'Rodriguez', 'lucas.rodriguez@example.com',552345678,'456 Oak Avenue, Smalltown, USA'),
(103,'Olivia', 'Smith', 'olivia.smith@example.com',5553456789,'789 Pine Road, Cityville, USA'),
(104, 'Ethan', 'Brown', 'ethan.brown@example.com',5551156789,'890 Elm Lane, Countryside, USA'),
(105, 'Sophia','Lee', 'sophia.lee@example.com',5556789011,'Cedar Drive, Villagetown, USA');

select * from Customers;

create table Products(
ProductID INT PRIMARY KEY ,
ProductName VARCHAR(50),
Description TEXT ,
Price DECIMAL(10,2)
);

INSERT INTO Products  VALUES
(1, 'Laptop', 'A high performance laptop', 1200.00),
(2, 'Smartphone', 'Latest model smartphone', 800.00),
(3, 'Headphones', 'Noise-cancelling headphones', 150.00),
(4, 'Monitor', '24-inch LED monitor', 200.00),
(5, 'Keyboard', 'Mechanical keyboard', 100.00);

select * from Products;
 

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    
);

INSERT INTO Orders VALUES
(1, 101, '2024-01-15', 1350.00),
(2, 102, '2024-02-20', 800.00),
(3, 103, '2024-03-25', 350.00),
(4, 104, '2024-04-30', 1300.00),
(5, 105, '2024-05-10', 100.00);

select * from Orders;



CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails  VALUES 
(1, 1, 1, 1), 
(2, 1, 3, 1),
(3, 2, 2, 1), 
(4, 3, 3, 2),
(5, 3, 5, 1); 


select * from OrderDetails;

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Inventory  VALUES 
(1, 1, 50, '2024-06-01'),
(2, 2, 30, '2024-06-01'), 
(3, 3, 100, '2024-06-01'), 
(4, 4, 20, '2024-06-01'), 
(5, 5, 75, '2024-06-01');
