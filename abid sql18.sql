SELECT u.id,
u.name,
SUM(p.amount) AS total_spent
FROM users u
JOIN payments p ON u.id = p.user_id
GROUP BY u.id, u.name
