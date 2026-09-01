--  1. Total Payment Amount by Each Customer
USE Ecommerce;
SELECT  
    c.customer_id,  
    c.name AS customer_name,  
    SUM(p.amount) AS total_paid  
FROM Customer c  
JOIN `Order` o ON c.customer_id = o.customer_id  
JOIN Payment p ON o.order_id = p.order_id  
GROUP BY c.customer_id, c.name  
LIMIT 0, 1000;

-- 2. Number of Orders per Status
SELECT 
    status,
    COUNT(*) AS total_orders
FROM `Order`
GROUP BY status;

-- 3. Average Product Price by Stock Range (e.g., grouped by stock buckets)
SELECT 
    CASE 
        WHEN stock < 10 THEN 'Low Stock'
        WHEN stock BETWEEN 10 AND 30 THEN 'Medium Stock'
        ELSE 'High Stock'
    END AS stock_level,
    AVG(price) AS avg_price
FROM Product
GROUP BY stock_level;

-- 4. Count of Products Ordered Per Product
SELECT 
    p.name AS product_name,
    COUNT(oi.order_item_id) AS times_ordered
FROM Product p
JOIN OrderItem oi ON p.product_id = oi.product_id
GROUP BY p.name;

-- 5. Customers With Total Payment Over ₹25,000
SELECT 
    c.name AS customer_name,
    SUM(p.amount) AS total_spent
FROM Customer c
JOIN `Order` o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
HAVING total_spent > 25000;