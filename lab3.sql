/* Q2 */

CREATE TABLE customers_copy AS
SELECT * 
FROM customers;

/* Q3 */

CREATE TABLE orders_copy AS
SELECT *
FROM orders;

CREATE TABLE order_details_copy AS
SELECT *
FROM order_details;

/* Q4 */

SELECT * 
FROM orders_copy; /* checking which orders haven't been shipped (not shipped = null) */

SET SQL_SAFE_UPDATES=0;
DELETE FROM orders_copy 
WHERE shipped_date IS NOT NULL; /* deleting orders that have shipped */

SELECT * 
FROM orders_copy; /* verifying what's left */

/* Q5 */

SELECT * FROM order_details_copy /* values -> order_qty */
WHERE order_id = '829' AND item_id = '5';

UPDATE order_details_copy 
SET order_qty = order_qty+2
WHERE order_id = '829' AND item_id = '5';

SELECT * FROM order_details_copy
WHERE order_id = '829' AND item_id = '5';

/* Q6 */

SELECT * FROM customers_copy;

INSERT INTO customers_copy
VALUES (26, 'Amanda', 'Hernandez', '9348 Cherry Hill Rd', 'College Park', 'MD', '20740', '3014126254', NULL);

/* Q7 */

SELECT order_id, COUNT(item_id) AS 'item_count'
FROM order_details_copy
WHERE order_id=829;