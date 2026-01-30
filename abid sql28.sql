CREATE VIEW v_popular_courses AS
SELECT c.title,
COUNT(e.id) AS nb_inscrits
FROM courses c 
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.title
ORDER BY nb_inscrits DESC;