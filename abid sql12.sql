SELECT c.title, 
       SUM(p.amount) AS revenu_total
FROM courses c
JOIN enrollments e ON c.id = e.course_id
JOIN payments p ON e.users_id = p.user_id
GROUP BY c.id, c.title
ORDER BY revenu_total DESC;