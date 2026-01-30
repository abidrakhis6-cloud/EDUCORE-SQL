SELECT c.title,
AVG(e.progress) AS avg_progress,
COUNT(e.id) AS nb_inscrits
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING AVG(e.progress) <  50
AND COUNT(e.id)  >= 3