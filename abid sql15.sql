SELECT c.title,
AVG(e.progress) AS avg_progress
FROM courses c 
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.title;