-- a) Select all customer data
SELECT * FROM Customer;

-- b) Select only customer names and emails
SELECT name, email FROM Customer;

-- a) Get customers from Mumbai
SELECT * FROM Customer
WHERE address = 'Mumbai';

-- b) Get customers from Delhi or Bangalore
SELECT * FROM Customer
WHERE address = 'Delhi' OR address = 'Bangalore';

-- c) Get orders with status 'Pending' and order_id > 2
SELECT * FROM `Order`
WHERE status = 'Pending' AND order_id > 2;

-- a) Customers with name starting with 'A'
SELECT * FROM Customer
WHERE name LIKE 'A%';

-- b) Products with 'Laptop' in their name
SELECT * FROM Product
WHERE name LIKE '%Laptop%';

-- a) Products priced between 2,000 and 60,000
SELECT * FROM Product
WHERE price BETWEEN 2000 AND 60000;

-- b) Orders with IDs between 2 and 4
SELECT * FROM `Order`
WHERE order_id BETWEEN 2 AND 4;

-- a) List all products sorted by price (high to low)
SELECT * FROM Product
ORDER BY price DESC;

-- b) List all customers sorted by name
SELECT * FROM Customer
ORDER BY name ASC;

-- a) Show top 3 most expensive products
SELECT * FROM Product
ORDER BY price DESC
LIMIT 3;

-- b) Get the latest 2 orders
SELECT * FROM `Order`
ORDER BY order_date DESC
LIMIT 2;

-- Combined Example (Multi-table JOIN + WHERE + ORDER BY)
-- Show recent orders for 'Aman Sharma'
SELECT 
    o.order_id,
    o.order_date,
    p.name AS product,
    oi.quantity,
    oi.price_at_purchase
FROM `Order` o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN OrderItem oi ON o.order_id = oi.order_id
JOIN Product p ON oi.product_id = p.product_id
WHERE c.name = 'Aman Sharma'
ORDER BY o.order_date DESC;

