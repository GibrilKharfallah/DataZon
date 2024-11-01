-- Utilisation de la base de données project_data
USE project_data;
GO

-- Création de la table de dimension DimProduct
CREATE TABLE DimProduct (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Brand VARCHAR(100),
    SupplierID INT
);

-- Insérer des données dans DimProduct
INSERT INTO DimProduct (ProductID, ProductName, Category, Price, Brand, SupplierID)
VALUES
    (1, 'Laptop', 'Electronics', 999.99, 'Dell', 101),
    (2, 'Smartphone', 'Electronics', 599.99, 'Samsung', 102),
    (3, 'Tablet', 'Electronics', 399.99, 'Apple', 103),
    (4, 'Smartwatch', 'Electronics', 199.99, 'Fitbit', 104),
    (5, 'Camera', 'Electronics', 299.99, 'Canon', 105),
    (11, 'Headphones', 'Electronics', 89.99, 'Sony', 110),
    (12, 'External Hard Drive', 'Electronics', 129.99, 'Seagate', 111),
    (13, 'Gaming Console', 'Electronics', 399.99, 'Sony', 110),
    (14, 'Action Camera', 'Electronics', 299.99, 'GoPro', 112),
    (15, 'Smart Speaker', 'Electronics', 149.99, 'Amazon', 113);

-- Création de la table de dimension DimCustomer
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(100),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20)
);

-- Insérer des données dans DimCustomer
INSERT INTO DimCustomer (CustomerID, CustomerName, Email, Address, PhoneNumber)
VALUES
    (1, 'John Doe', 'john.doe@example.com', '123 Elm Street', '555-1234'),
    (2, 'Jane Smith', 'jane.smith@example.com', '456 Oak Street', '555-5678'),
    (3, 'Jim Brown', 'jim.brown@example.com', '789 Pine Street', '555-8765'),
    (4, 'Anna White', 'anna.white@example.com', '135 Maple Street', '555-1357'),
    (5, 'Mike Green', 'mike.green@example.com', '246 Birch Street', '555-2468'),
    (6, 'Linda Black', 'linda.black@example.com', '357 Cedar Street', '555-3579'),
    (7, 'David Blue', 'david.blue@example.com', '111 Spruce Street', '555-7890'),
    (8, 'Eve Grey', 'eve.grey@example.com', '222 Cypress Street', '555-2345'),
    (9, 'Frank Yellow', 'frank.yellow@example.com', '333 Redwood Street', '555-3456');

-- Création de la table de dimension DimSupplier
CREATE TABLE DimSupplier (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(100),
    ContactPhone VARCHAR(20)
);

-- Insérer des données dans DimSupplier
INSERT INTO DimSupplier (SupplierID, SupplierName, ContactName, ContactEmail, ContactPhone)
VALUES
    (101, 'Dell', 'Michael Dell', 'michael.dell@dell.com', '555-1111'),
    (102, 'Samsung', 'Lee Kun-hee', 'lee.kunhee@samsung.com', '555-2222'),
    (103, 'Apple', 'Tim Cook', 'tim.cook@apple.com', '555-3333'),
    (104, 'Fitbit', 'James Park', 'james.park@fitbit.com', '555-4444'),
    (105, 'Canon', 'Fujio Mitarai', 'fujio.mitarai@canon.com', '555-5555'),
    (110, 'Sony', 'Kenichiro Yoshida', 'kenichiro.yoshida@sony.com', '555-1010'),
    (111, 'Seagate', 'Dave Mosley', 'dave.mosley@seagate.com', '555-1111'),
    (112, 'GoPro', 'Nicholas Woodman', 'nicholas.woodman@gopro.com', '555-1212'),
    (113, 'Amazon', 'Andy Jassy', 'andy.jassy@amazon.com', '555-1313');

-- Création de la table de dimension DimDate
CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    Year INT,
    Quarter INT
);

-- Insérer des données dans DimDate
INSERT INTO DimDate (DateKey, FullDate, Day, Month, Year, Quarter)
VALUES
    (20240101, '2024-01-01', 1, 1, 2024, 1),
    (20240102, '2024-01-02', 2, 1, 2024, 1),
    (20240103, '2024-01-03', 3, 1, 2024, 1),
    (20240201, '2024-02-01', 1, 2, 2024, 1),
    (20240301, '2024-03-01', 1, 3, 2024, 1),
    (20240402, '2024-04-02', 2, 4, 2024, 2),
    (20240501, '2024-05-01', 1, 5, 2024, 2),
    (20240502, '2024-05-02', 2, 5, 2024, 2),
    (20240601, '2024-06-01', 1, 6, 2024, 2),
    (20240602, '2024-06-02', 2, 6, 2024, 2);

-- Création de la table de dimension DimPromotion
CREATE TABLE DimPromotion (
    PromotionID INT PRIMARY KEY,
    PromotionName VARCHAR(255),
    DiscountPercentage DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE
);

-- Insérer des données dans DimPromotion
INSERT INTO DimPromotion (PromotionID, PromotionName, DiscountPercentage, StartDate, EndDate)
VALUES
    (201, 'New Year Sale', 10.00, '2024-01-01', '2024-01-31'),
    (202, 'Valentine Day Sale', 15.00, '2024-02-01', '2024-02-14'),
    (203, 'Spring Sale', 20.00, '2024-03-01', '2024-03-31'),
    (204, 'Summer Sale', 25.00, '2024-06-01', '2024-06-30'),
    (205, 'Back to School Sale', 30.00, '2024-08-01', '2024-08-31');

-- Création de la table de dimension DimPaymentMethod
CREATE TABLE DimPaymentMethod (
    PaymentMethodID INT PRIMARY KEY,
    PaymentMethodName VARCHAR(50)
);

-- Insérer des données dans DimPaymentMethod
INSERT INTO DimPaymentMethod (PaymentMethodID, PaymentMethodName)
VALUES
    (1, 'Credit Card'),
    (2, 'PayPal'),
    (3, 'Bank Transfer'),
    (4, 'Cash on Delivery');

-- Création de la table de dimension DimShipping
CREATE TABLE DimShipping (
    ShippingID INT PRIMARY KEY,
    ShippingMethod VARCHAR(50),
    ShippingCost DECIMAL(10, 2)
);

-- Insérer des données dans DimShipping
INSERT INTO DimShipping (ShippingID, ShippingMethod, ShippingCost)
VALUES
    (1, 'Standard Shipping', 5.99),
    (2, 'Express Shipping', 9.99),
    (3, 'Overnight Shipping', 19.99),
    (4, 'International Shipping', 29.99);

-- Création de la table FactSales
CREATE TABLE FactSales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    CustomerID INT,
    DateKey INT,
    QuantitySold INT,
    TotalAmount DECIMAL(10, 2),
    PromotionID INT,
    PaymentMethodID INT,
    ShippingID INT,
    OrderID INT,
    OrderDate DATE,
    PaymentAmount DECIMAL(10, 2),
    ShippingCost DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (PromotionID) REFERENCES DimPromotion(PromotionID),
    FOREIGN KEY (PaymentMethodID) REFERENCES DimPaymentMethod(PaymentMethodID),
    FOREIGN KEY (ShippingID) REFERENCES DimShipping(ShippingID)
);

-- Insérer des données dans FactSales
INSERT INTO FactSales (ProductID, CustomerID, DateKey, QuantitySold, TotalAmount, PromotionID, PaymentMethodID, ShippingID, OrderID, OrderDate, PaymentAmount, ShippingCost)
VALUES
    (1, 1, 20240101, 2, 1999.98, 201, 1, 1, 1001, '2024-01-01', 1999.98, 5.99),
    (2, 2, 20240102, 1, 599.99, 202, 2, 2, 1002, '2024-01-02', 599.99, 9.99),
    (3, 3, 20240103, 3, 1199.97, 203, 3, 1, 1003, '2024-01-03', 1199.97, 5.99),
    (4, 4, 20240201, 1, 199.99, NULL, 4, 2, 1004, '2024-02-01', 199.99, 9.99),
    (5, 5, 20240301, 2, 599.98, 203, 1, 1, 1005, '2024-03-01', 599.98, 5.99),
    (11, 6, 20240402, 1, 89.99, NULL, 2, 1, 1006, '2024-04-02', 89.99, 5.99),
    (12, 7, 20240501, 2, 259.98, 204, 3, 2, 1007, '2024-05-01', 259.98, 9.99),
    (13, 8, 20240502, 1, 399.99, 205, 1, 3, 1008, '2024-05-02', 399.99, 19.99),
    (14, 9, 20240601, 3, 899.97, NULL, 2, 4, 1009, '2024-06-01', 899.97, 29.99),
    (15, 1, 20240602, 1, 149.99, NULL, 1, 1, 1010, '2024-06-02', 149.99, 5.99);

-- Vérifier les données insérées dans FactSales
SELECT * FROM FactSales;

-- Vérifier les données insérées dans DimProduct
SELECT * FROM DimProduct;

-- Vérifier les données insérées dans DimCustomer
SELECT * FROM DimCustomer;

-- Vérifier les données insérées dans DimDate
SELECT * FROM DimDate;

-- Vérifier les données insérées dans DimPromotion
SELECT * FROM DimPromotion;

-- Vérifier les données insérées dans DimPaymentMethod
SELECT * FROM DimPaymentMethod;

-- Vérifier les données insérées dans DimShipping
SELECT * FROM DimShipping;