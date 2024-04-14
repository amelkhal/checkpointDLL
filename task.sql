-- Create the Customer table
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    customer_Name VARCHAR(50),
    customer_Tel VARCHAR(20)
);

-- Create the Product table
CREATE TABLE Product (
    Product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create the Orders table
CREATE TABLE Orders (
    Customer_id INT,
    Product_id INT,
    quantity INT,
    total_amount DECIMAL(10, 2),
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
-- Add a column Category to the Product table
ALTER TABLE Product ADD Category VARCHAR(20);

-- Add a column OrderDate to the Orders table with SYSDATE as default value
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;