SELECT u.name,
COUNT(e.course_id) AS nb_courses
FROM users u
JOIN enrollments e ON u.id = e.users_id
GROUP BY u.id, u.name
HAVING COUNT(e.course_id)  >= 2;