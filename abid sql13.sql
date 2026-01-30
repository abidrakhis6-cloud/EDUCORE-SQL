SELECT u.name,
       COUNT(p.id) AS nb_paiements
FROM users u 
JOIN payments p ON u.id = p.user_id
GROUP BY u.id, u.name
HAVING COUNT(p.id)  >=2;