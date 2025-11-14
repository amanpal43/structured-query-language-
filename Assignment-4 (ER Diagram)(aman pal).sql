CREATE DATABASE martdb;
USE martdb;
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO Category VALUES
(1,'Beverages'),
(2,'Snacks'),
(3,'Dairy'),
(4,'Bakery'),
(5,'Frozen'),
(6,'Produce'),
(7,'Meat'),
(8,'Cleaning'),
(9,'Personal Care'),
(10,'Stationery');

CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(50),
    contact VARCHAR(20)
);
INSERT INTO Supplier VALUES
(1,'ABC Traders','9876543210'),
(2,'Fresh Foods','9123456780'),
(3,'Cool Drinks','9922334455'),
(4,'Snack Hub','8899776655'),
(5,'Daily Milk Co','9988776655'),
(6,'Bake House','7766554433'),
(7,'Frozen World','9090909090'),
(8,'Veggie Farm','8855223366'),
(9,'CleanPro','8712345678'),
(10,'OfficeHub','7900123456');

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10,2),
    category_id INT,
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
INSERT INTO Product VALUES
(1,'Cola',50,1,3),
(2,'Juice',70,1,3),
(3,'Chips',20,2,4),
(4,'Cookies',30,2,4),
(5,'Milk',40,3,5),
(6,'Bread',25,4,6),
(7,'Ice Cream',80,5,7),
(8,'Apple',90,6,8),
(9,'Chicken',200,7,8),
(10,'Pen',10,10,10);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15)
);
INSERT INTO Customer VALUES
(1,'Ravi','Delhi','9988776655'),
(2,'Priya','Mumbai','9876543211'),
(3,'Aman','Chennai','9900112233'),
(4,'Sara','Pune','8899776655'),
(5,'John','Delhi','7799886655'),
(6,'Aisha','Hyderabad','9988223344'),
(7,'Karan','Kolkata','8877665544'),
(8,'Sneha','Bangalore','9988998877'),
(9,'Vikram','Jaipur','9090909099'),
(10,'Anita','Surat','9123456789');

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO Employee VALUES
(1,'Rakesh','Manager',40000),
(2,'Suman','Cashier',25000),
(3,'Rita','Sales Staff',20000),
(4,'Mukesh','Sales Staff',20000),
(5,'Divya','Cashier',24000),
(6,'Suresh','Stock Manager',30000),
(7,'Aarti','Sales Staff',19000),
(8,'Harish','Cleaner',15000),
(9,'Kavita','Sales Staff',21000),
(10,'Rahul','Cashier',23000);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Orders VALUES
(1,1,2,'2025-01-01'),
(2,2,1,'2025-01-02'),
(3,3,3,'2025-01-03'),
(4,4,4,'2025-01-04'),
(5,5,5,'2025-01-05'),
(6,6,6,'2025-01-06'),
(7,7,7,'2025-01-07'),
(8,8,8,'2025-01-08'),
(9,9,9,'2025-01-09'),
(10,10,10,'2025-01-10');

CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
INSERT INTO OrderItems VALUES
(1,1,1,2),
(2,2,3,1),
(3,3,4,3),
(4,4,2,1),
(5,5,5,2),
(6,6,6,1),
(7,7,7,2),
(8,8,8,3),
(9,9,9,1),
(10,10,10,5);

CREATE TABLE Mart (
    Mart_ID INT PRIMARY KEY,
    Mart_Name VARCHAR(50),
    Location VARCHAR(50),
    Manager_Name VARCHAR(50),
    Contact_Number VARCHAR(15)
);

INSERT INTO Mart (Mart_ID, Mart_Name, Location, Manager_Name, Contact_Number)
VALUES
(1, 'FreshMart', 'Delhi', 'Ravi Kumar', '9876543210'),
(2, 'DailyNeeds', 'Mumbai', 'Neha Sharma', '9988776655'),
(3, 'SuperSave', 'Chennai', 'Arjun Reddy', '9123456789'),
(4, 'MegaMart', 'Bangalore', 'Priya Verma', '9012345678'),
(5, 'CityBazaar', 'Kolkata', 'Anil Das', '9090909090'),
(6, 'ValueShop', 'Hyderabad', 'Sneha Rao', '9876501234'),
(7, 'SmartCart', 'Pune', 'Rahul Mehta', '9812345678'),
(8, 'EasyBuy', 'Jaipur', 'Simran Kaur', '9753108642'),
(9, 'QuickPick', 'Ahmedabad', 'Karan Patel', '9623415789'),
(10, 'ShopMore', 'Lucknow', 'Divya Singh', '9532146870');


CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(50),
    City VARCHAR(40),
    Contact_Number VARCHAR(15),
    Supply_Type VARCHAR(30)
);

INSERT INTO Suppliers (Supplier_ID, Supplier_Name, City, Contact_Number, Supply_Type)
VALUES
(1, 'Fresh Foods Ltd', 'Delhi', '9876512345', 'Groceries'),
(2, 'Pure Dairy Co.', 'Mumbai', '9988712345', 'Dairy'),
(3, 'GreenFarm Produce', 'Bangalore', '9123412345', 'Vegetables'),
(4, 'Sparkle Cleaners', 'Hyderabad', '9012312345', 'Cleaning Items'),
(5, 'Sweet Sip Beverages', 'Kolkata', '9090912345', 'Beverages'),
(6, 'Daily Essentials', 'Pune', '9876509876', 'Toiletries'),
(7, 'Healthy Grains Pvt Ltd', 'Chennai', '9812309876', 'Cereals'),
(8, 'Snacky Foods', 'Ahmedabad', '9753109876', 'Snacks'),
(9, 'CoolAir Refrigeration', 'Jaipur', '9623409876', 'Equipment'),
(10, 'PackPro Supplies', 'Lucknow', '9532109876', 'Packaging');


CREATE TABLE Expenses (
    Expense_ID INT PRIMARY KEY,
    Expense_Date DATE,
    Expense_Type VARCHAR(50),
    Amount DECIMAL(10,2),
    Payment_Method VARCHAR(20)
);

INSERT INTO Expenses (Expense_ID, Expense_Date, Expense_Type, Amount, Payment_Method)
VALUES
(1, '2025-11-01', 'Electricity Bill', 12500.00, 'Online'),
(2, '2025-11-02', 'Water Bill', 3200.00, 'Cash'),
(3, '2025-11-03', 'Cleaning Supplies', 4500.00, 'Card'),
(4, '2025-11-04', 'Maintenance', 6700.00, 'Online'),
(5, '2025-11-05', 'Advertising', 8200.00, 'Online'),
(6, '2025-11-06', 'Stationery', 1500.00, 'Cash'),
(7, '2025-11-07', 'Internet Bill', 2800.00, 'Online'),
(8, '2025-11-08', 'Transport', 5600.00, 'Card'),
(9, '2025-11-09', 'Security Services', 7100.00, 'Online'),
(10, '2025-11-10', 'Repairs', 9200.00, 'Cash');

