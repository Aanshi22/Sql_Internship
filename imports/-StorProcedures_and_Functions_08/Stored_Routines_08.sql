USE Ecommerce;
-- Stored Procedure: Get Orders by Status
DELIMITER //

CREATE PROCEDURE GetOrdersByStatus(IN input_status VARCHAR(20))
BEGIN
    SELECT 
        o.order_id,
        c.name AS customer_name,
        o.order_date,
        o.status
    FROM `Order` o
    JOIN Customer c ON o.customer_id = c.customer_id
    WHERE o.status = input_status;
END //

DELIMITER ;

CALL GetOrdersByStatus('Delivered');

-- Function: Total Amount Paid by Customer
DELIMITER //

CREATE FUNCTION TotalPaidByCustomer(cust_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT 
        SUM(p.amount) 
    INTO total
    FROM Payment p
    JOIN `Order` o ON p.order_id = o.order_id
    WHERE o.customer_id = cust_id AND p.status = 'Paid';

    RETURN IFNULL(total, 0.00);
END //

DELIMITER ;

SELECT TotalPaidByCustomer(1) AS total_paid;
