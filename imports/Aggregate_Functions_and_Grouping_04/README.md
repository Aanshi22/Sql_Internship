# Aggregate_Functions_and_Grouping_04
SQL JOIN queries on an E-commerce database
# Aggregate Functions and Grouping

## Objective
To use SQL aggregate functions and grouping techniques to summarize and analyze tabular data from an E-commerce database.

---

## Tools Used
- MySQL Workbench 
- SQL (Structured Query Language)

---

## Dataset Structure
The database simulates a simple E-commerce platform with the following tables:
- `Customer` – Customer details
- `Product` – Product listings with price and stock
- `Order` – Customer orders
- `OrderItem` – Items in each order
- `Payment` – Payment details for orders

---

## Concepts Applied
- **Aggregate Functions:** `SUM()`, `COUNT()`, `AVG()`
- **Grouping:** `GROUP BY`
- **Filtering Groups:** `HAVING`
- **Conditional Grouping:** `CASE WHEN` for stock levels

---

##  SQL Queries Overview

### 1. Total Payment Amount by Each Customer
``sql
SELECT  
    c.customer_id,  
    c.name AS customer_name,  
    SUM(p.amount) AS total_paid  
FROM Customer c  
JOIN `Order` o ON c.customer_id = o.customer_id  
JOIN Payment p ON o.order_id = p.order_id  
GROUP BY c.customer_id, c.name  
LIMIT 0, 1000; ``
## 2. Number of Orders per Status
``SELECT 
    status,
    COUNT(*) AS total_orders
FROM `Order`
GROUP BY status;
``
## 3. Average Product Price by Stock Range
``SELECT 
    CASE 
        WHEN stock < 10 THEN 'Low Stock'
        WHEN stock BETWEEN 10 AND 30 THEN 'Medium Stock'
        ELSE 'High Stock'
    END AS stock_level,
    AVG(price) AS avg_price
FROM Product
GROUP BY stock_level;
``
## 4. Count of Products Ordered Per Product
``SELECT 
    p.name AS product_name,
    COUNT(oi.order_item_id) AS times_ordered
FROM Product p
JOIN OrderItem oi ON p.product_id = oi.product_id
GROUP BY p.name;
``
## 5. Customers With Total Payment Over ₹25,000
``SELECT 
    c.name AS customer_name,
    SUM(p.amount) AS total_spent
FROM Customer c
JOIN `Order` o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
HAVING total_spent > 25000;
``
