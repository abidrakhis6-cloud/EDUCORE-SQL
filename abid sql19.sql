SELECT u.id,
u.name,
SUM(p.amount) AS total_spent
FROM users u
JOIN payments p ON u.id = p.user_id
GROUP BY u.id, u.name
HAVING SUM(p.amount) > (
SELECT AVG(total)
FROM (
SELECT SUM(amount) AS total
FROM payments
GROUP BY user_id
) AS sub
);
