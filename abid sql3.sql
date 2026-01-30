CREATE TABLE enrollments (
id INT AUTO_INCREMENT PRIMARY KEY,
users_id INT,
course_id INT,
progress INT DEFAULT 0 CHECK (progress BETWEEN 0 AND 100),
FOREIGN KEY (users_id) REFERENCES users(id),
FOREIGN KEY (course_id) REFERENCES courses(id)
);