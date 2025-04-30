-- Explore customer ordering behavior to identify patterns such as repeat
-- ordering, customer segmentation, and trends over time.

-- Repeat customers: Count of customers with more than one order
SELECT COUNT(*) AS repeat_customers
FROM (
    SELECT customer_id
    FROM customer_orders
    GROUP BY customer_id
    HAVING COUNT(order_id) > 1
) AS repeat_table;

-- Total customers and how many ordered more than once
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(CASE WHEN order_count > 1 THEN 1 ELSE 0 END) AS repeat_customers
FROM (
    SELECT customer_id, COUNT(order_id) AS order_count
    FROM customer_orders
    GROUP BY customer_id
) AS summary;

-- Monthly active customers
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;
