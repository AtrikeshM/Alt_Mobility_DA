-- Analyze order status and sales data to provide insights into order
-- fulfillment and revenue trends. Identify key metrics and trends related to
-- order status and sales.

-- Total number of orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY order_status;

-- Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(order_amount) AS total_sales
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;

-- Average order amount by status
SELECT order_status, ROUND(AVG(order_amount), 2) AS avg_order_value
FROM customer_orders
GROUP BY order_status;
