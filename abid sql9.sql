SELECT e.*
FROM enrollments e
LEFT JOIN users u ON e.users_id = u.id
LEFT JOIN courses c ON e.course_id = c.id
WHERE u.id IS NULL OR c.id IS NULL;