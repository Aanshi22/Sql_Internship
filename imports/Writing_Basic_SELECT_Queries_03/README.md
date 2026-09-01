# Writing_Basic_SELECT_Queries_03
 SQL script to create and query a sample E-commerce database
# E-commerce SQL Database Project

This project demonstrates the design and querying of a basic **E-commerce database** using SQL. It includes schema creation, data insertion, and real-world SELECT queries to retrieve meaningful information from the database.

---

## Database: `Ecommerce`

This relational database is built using **MySQL** or **SQLite**, and includes the following tables:

### Tables

| Table Name     | Description |
|----------------|-------------|
| `Customer`     | Stores customer details such as name, email, phone, and address |
| `Product`      | Contains product information like name, description, price, and stock |
| `Order`        | Records customer orders and their status |
| `Payment`      | Tracks payments for orders, including payment method and amount |
| `OrderItem`    | Junction table linking orders with products and quantities |

---

## Schema Setup

You can run the `ecommerce_database.sql` script to:

1. Create the database and tables
2. Insert sample data
3. Run SELECT queries for retrieval and analysis

---

##  Key Features

### Schema Creation
- Uses `PRIMARY KEY`, `FOREIGN KEY`, `AUTO_INCREMENT`, and data constraints
- Establishes relationships between orders, customers, products, and payments

### Data Insertion
- Preloaded with 5 customers, 5 products, 5 orders, related payments, and order items

### SQL Query Examples
Includes a variety of **SELECT** queries demonstrating:

- `SELECT *` and specific columns
- Filtering with `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`
- Multi-table joins (JOINs)

---

## Example Queries
sql
-- 1. Get all orders with product and customer details
``SELECT 
    o.order_id,
    c.name AS customer_name,
    p.name AS product_name,
    oi.quantity,
    oi.price_at_purchase
FROM `Order` o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN OrderItem oi ON o.order_id = oi.order_id
JOIN Product p ON oi.product_id = p.product_id;``

-- 2. List top 3 most expensive products
``SELECT * FROM Product
ORDER BY price DESC
LIMIT 3;``
