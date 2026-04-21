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
SELECT HOUR(time) AS hour, COUNT(*) AS total_orders
FROM orders
GROUP BY hour
ORDER BY hour;

-- Orders by Date
SELECT date, COUNT(*) AS total_orders
FROM orders
GROUP BY date
ORDER BY date;

-- ================================
-- ADDITIONAL BASIC ANALYSIS
-- ================================

-- Highest priced pizza
SELECT pizza_id, price
FROM pizzas
ORDER BY price DESC
LIMIT 1;

-- Most common pizza size ordered
SELECT p.size, COUNT(*) AS total_orders
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY total_orders DESC
LIMIT 1;


-- ================================
-- ADDITIONAL INTERMEDIATE ANALYSIS
-- ================================

-- Total quantity of each pizza category ordered
SELECT pt.category, SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_quantity DESC;

-- Category-wise distribution of pizzas (count)
SELECT pt.category, COUNT(*) AS total_orders
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;

-- Average number of pizzas ordered per day
SELECT 
    o.date,
    SUM(od.quantity) AS total_pizzas,
    ROUND(SUM(od.quantity) / COUNT(DISTINCT o.order_id), 2) AS avg_pizzas_per_order
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.date
ORDER BY o.date;

-- Top 3 pizza types based on revenue
SELECT pt.name, ROUND(SUM(od.quantity * p.price),2) AS revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3;


-- ================================
-- ADVANCED ANALYSIS
-- ================================

-- Percentage contribution of each pizza type to total revenue
SELECT 
    pt.name,
    ROUND(SUM(od.quantity * p.price),2) AS revenue,
    ROUND(
        SUM(od.quantity * p.price) * 100 / 
        (SELECT SUM(od2.quantity * p2.price)
         FROM order_details od2
         JOIN pizzas p2 ON od2.pizza_id = p2.pizza_id), 2
    ) AS revenue_percentage
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC;

-- Cumulative revenue over time
SELECT 
    o.date,
    SUM(od.quantity * p.price) AS daily_revenue,
    SUM(SUM(od.quantity * p.price)) OVER (ORDER BY o.date) AS cumulative_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY o.date
ORDER BY o.date;

-- Top 3 pizzas by revenue within each category
SELECT *
FROM (
    SELECT 
        pt.category,
        pt.name,
        ROUND(SUM(od.quantity * p.price),2) AS revenue,
        RANK() OVER (PARTITION BY pt.category ORDER BY SUM(od.quantity * p.price) DESC) AS rank_in_category
    FROM order_details od
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY pt.category, pt.name
) ranked
WHERE rank_in_category <= 3;