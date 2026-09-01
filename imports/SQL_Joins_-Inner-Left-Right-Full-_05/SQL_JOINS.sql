USE Ecommerce;
-- 1. INNER JOIN
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM CustomerLite c
INNER JOIN OrderLite o
ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM CustomerLite c
LEFT JOIN OrderLite o
ON c.customer_id = o.customer_id;
-- 3. RIGHT JOIN
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM CustomerLite c
RIGHT JOIN OrderLite o
ON c.customer_id = o.customer_id;
-- 4. FULL OUTER JOIN (Simulated)
-- Simulating FULL OUTER JOIN using UNION
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM CustomerLite c
LEFT JOIN OrderLite o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM CustomerLite c
RIGHT JOIN OrderLite o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

