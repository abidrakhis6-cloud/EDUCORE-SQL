CREATE VIEW v_monthly_revenue AS
SELECT DATE_FORMAT(p.paid_at, '%Y-%m') AS month,
SUM(p.amount) AS total_revenue
FROM payments p 
GROUP BY DATE_FORMAT(p.paid_at, '%Y-%m')
ORDER BY month;