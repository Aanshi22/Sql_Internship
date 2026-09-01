# StorProcedures_and_Functions_08
## Task 08 - Stored Procedure and Function for reusable SQL blocks

This task demonstrates how to define and use **stored routines**—including **procedures** and **functions**—in SQL to enhance modularity, reuse, and logic encapsulation within the E-commerce database project.

---

###  Objective

- Learn to create reusable SQL logic using `CREATE PROCEDURE` and `CREATE FUNCTION`
- Use parameters and conditional logic
- Understand the difference between procedures and functions
- Improve code abstraction and reduce query redundancy

---

###  Tools Used

- MySQL Workbench / DB Browser for SQLite  
- SQL (Structured Query Language)  
- Git & GitHub for version control  

---

###  Files Included

| File Name                                | Description                                      |
|-----------------------------------------|--------------------------------------------------|
| `ecommerce_database.sql`                | Core database schema and data                    |
| `Stored_Routines_08.sql`                | SQL file containing stored procedure and function|
| `Stored Procedure Get Orders by Status.csv` | Sample output of procedure execution          |
| `Function Total Amount Paid by Customer.csv` | Sample output of function result             |
| `ER_Diagram.png`                         | Schema diagram (optional)                        |

---

##  Stored Routine Examples

### 1️. Stored Procedure: `GetOrdersByStatus`
Returns all orders with a specific status (e.g., Delivered, Shipped).
```
DELIMITER //
CREATE PROCEDURE GetOrdersByStatus(IN order_status VARCHAR(20))
BEGIN
    SELECT 
        o.order_id,
        c.name AS customer_name,
        o.order_date,
        o.status
    FROM `Order` o
    JOIN Customer c ON o.customer_id = c.customer_id
    WHERE o.status = order_status;
END //
DELIMITER ;
```
Usage:
``` CALL GetOrdersByStatus('Delivered'); ```

### 2. Function: `TotalPaidByCustomer`
Returns the total amount paid by a given customer.
```
DELIMITER //
CREATE FUNCTION TotalPaidByCustomer(cust_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(p.amount)
    INTO total
    FROM Payment p
    JOIN `Order` o ON p.order_id = o.order_id
    WHERE o.customer_id = cust_id AND p.status = 'Paid';

    RETURN IFNULL(total, 0);
END //
DELIMITER ;
```

Usage:
``` SELECT TotalPaidByCustomer(1); ```
