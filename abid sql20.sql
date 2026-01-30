SELECT title, price
FROM courses
WHERE price > (
SELECT AVG(price)
FROM courses
);