SELECT u.name
FROM users u 
LEFT JOIN payments p ON u.id = p.user_id
WHERE p.id IS NULL;