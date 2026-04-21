-- ================================
-- BASIC KPIs
-- ================================

-- Total Revenue
SELECT ROUND(SUM(od.quantity * p.price),2) AS total_revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Average Order Value
SELECT 
ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id),2) AS avg_order_value
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id;

-- ================================
-- PRODUCT ANALYSIS
-- ================================

-- Top 5 Best-Selling Pizzas
SELECT pt.name, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold DESC
LIMIT 5;

-- Revenue by Category
SELECT pt.category, ROUND(SUM(od.quantity * p.price),2) AS revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;

-- ================================
-- TIME ANALYSIS
-- ================================

-- Orders by Hour
SELECT HOUR(order_time) AS hour, COUNT(*) AS total_orders
FROM orders
GROUP BY hour
ORDER BY hour;

-- Orders by Date
SELECT order_date, COUNT(*) AS total_orders
FROM orders
GROUP BY order_date
ORDER BY order_date;