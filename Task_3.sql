-- Investigate payment status data to identify any potential issues or trends
-- related to payment success and failure.

-- Count of payments by status
SELECT payment_status, COUNT(*) AS payment_count
FROM payments
GROUP BY payment_status;

-- Payment failure rate
SELECT 
    ROUND(SUM(CASE WHEN payment_status = 'Failed' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS failure_rate_percent
FROM payments;

-- Payment method success rate
SELECT 
    payment_method,
    COUNT(*) AS total,
    SUM(CASE WHEN payment_status = 'Success' THEN 1 ELSE 0 END) AS success_count,
    ROUND(SUM(CASE WHEN payment_status = 'Success' THEN 1 ELSE 0 END)/COUNT(*) * 100, 2) AS success_rate_percent
FROM payments
GROUP BY payment_method;
