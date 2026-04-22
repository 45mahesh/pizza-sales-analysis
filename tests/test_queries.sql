-- Test: Ensure no NULL order_id
SELECT COUNT(*) 
FROM orders
WHERE order_id IS NULL;

-- Test: Ensure valid quantities
SELECT COUNT(*) 
FROM order_details
WHERE quantity <= 0;

-- Test: Ensure price is positive
SELECT COUNT(*) 
FROM pizzas
WHERE price <= 0;