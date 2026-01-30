SELECT c.title
FROM courses c 
JOIN enrollments e ON c.id =  e.course_id
LEFT JOIN payments p ON e.users_id = p.user_id
GROUP BY c.id, c.title
HAVING COUNT(p.id) = 0;