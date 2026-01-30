SELECT u.name,
c.title,
e.progress
FROM enrollments e
JOIN users u ON e.users_id = u.id
JOIN courses c ON e.course_id = c.id
WHERE e.progress < 25;