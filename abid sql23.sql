CREATE VIEW v_active_user AS
SELECT DISTINCT u.id, u.name, u.email
FROM users u
JOIN enrollments e ON u.id = e.users_id;
