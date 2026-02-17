SELECT property_id, property_type, address, postal_code, price_in_euro, size_in_sqft, year_built, status, agent_id
FROM properties;

SELECT property_type, address, postal_code, price_in_euro, size_in_sqft
FROM properties
WHERE status = 'available';

SELECT transaction_id, transaction_date, payment_status, payment_method, property_id, client_id
FROM transactions
WHERE agent_id = 1;

SELECT transaction_id, transaction_date, payment_status, payment_method, property_id
FROM transactions
WHERE client_id = 2;

UPDATE properties
SET status = 'sold'
WHERE property_id = 3;

DELETE FROM clients
WHERE client_id = 5;

SELECT SUM(price) AS total_sales
FROM transactions
WHERE payment_status = 'completed' AND MONTH(transaction_date) = 9;

SELECT client_id, first_name, last_name, budget_min, budget_max
FROM clients
WHERE preferred_property_type = 'Apartment'
  AND budget_min >= 300000
  AND budget_max <= 500000;

SELECT property_id, property_type, address, price_in_euro, size_in_sqft, year_built
FROM properties
WHERE status = 'available'
ORDER BY price_in_euro DESC
LIMIT 5;

SELECT property_type, COUNT(*) AS property_count
FROM properties
GROUP BY property_type;

SELECT property_type, COUNT(*) AS property_count
FROM properties
GROUP BY property_type
HAVING COUNT(*) > 5;

SELECT SUM(transaction_amount) AS total_sales
FROM transactions
WHERE payment_status = 'completed' AND MONTH(transaction_date) = 9;

SELECT SUM(transaction_amount) AS total_sales
FROM transactions
WHERE payment_status = 'completed' AND QUARTER(transaction_date) = 3;

SELECT SUM(transaction_amount) AS total_sales
FROM transactions
WHERE payment_status = 'completed' AND YEAR(transaction_date) = 2024;

SELECT a.agent_id, a.first_name, a.last_name, COUNT(p.property_id) AS properties_sold
FROM agents a
         INNER JOIN properties p ON a.agent_id = p.agent_id
WHERE p.status = 'sold'
GROUP BY a.agent_id;

SELECT c.client_id, c.first_name, c.last_name, t.transaction_id,t.payment_method,t.transaction_amount,t.transaction_date
FROM clients c
         LEFT JOIN transactions t ON c.client_id = t.client_id;

SELECT t.transaction_id, t.transaction_date, p.address, p.year_built, t.payment_status
FROM transactions t
         RIGHT JOIN properties p ON t.property_id = p.property_id;

SELECT p.property_id,p.status, p.price_in_euro, p.property_type, c.first_name, c.last_name
FROM properties p
         CROSS JOIN clients c;

DELIMITER //

CREATE TRIGGER set_default_property_status
    BEFORE INSERT ON properties
    FOR EACH ROW
BEGIN
    SET NEW.status = 'available';
END; //

DELIMITER ;

DELIMITER //

CREATE TRIGGER update_property_status
    AFTER INSERT ON transactions
    FOR EACH ROW
BEGIN
    IF NEW.payment_status = 'completed' THEN
        UPDATE properties
        SET status = 'sold'
        WHERE property_id = NEW.property_id;
    END IF;
END; //

DELIMITER ;

SELECT p.property_id, p.property_type, a.first_name, a.last_name
FROM properties p
         LEFT JOIN agents a ON p.agent_id = a.agent_id
WHERE p.status <> 'sold'
  AND a.agent_id NOT IN (SELECT DISTINCT agent_id FROM transactions WHERE payment_status = 'completed');
