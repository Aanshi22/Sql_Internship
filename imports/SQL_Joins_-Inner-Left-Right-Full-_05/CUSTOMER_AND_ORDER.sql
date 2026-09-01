USE Ecommerce;
DROP TABLE IF EXISTS OrderLite;
DROP TABLE IF EXISTS CustomerLite;
-- Step 1: Create table CustomerLite
CREATE TABLE CustomerLite (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);
-- Step 2: creat table orderlite
CREATE TABLE OrderLite (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CustomerLite(customer_id)
);
-- Step 3: Insert 10 Indian Customers
INSERT INTO CustomerLite (customer_id, name) VALUES
(1, 'Aman Sharma'),
(2, 'Priya Verma'),
(3, 'Ravi Kumar'),
(4, 'Sneha Reddy'),
(5, 'Aditya Mehta'),
(6, 'Kavya Iyer'),
(7, 'Rahul Singh'),
(8, 'Pooja Joshi'),
(9, 'Nikhil Das'),
(10, 'Neha Kapoor');
--  Step 4: Insert 10 Orders (some with unmatched customer IDs)
INSERT INTO OrderLite (order_id, customer_id, order_date) VALUES
(101, 1, '2024-01-01'),
(102, 2, '2024-01-03'),
(103, 3, '2024-01-05'),
(104, 5, '2024-01-08'),
(105, 6, '2024-01-10'),
(108, 1, '2024-01-18'),
(109, 4, '2024-01-20'),
(110, 7, '2024-01-25');

INSERT INTO CustomerLite (customer_id, name) VALUES
(11, 'Tanvi Desai'),
(12, 'Vikram Rao');

