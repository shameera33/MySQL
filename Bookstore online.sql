-- Table creation
CREATE TABLE books(id INT, title VARCHAR(50), author VARCHAR(50), price INT, stock INT);
INSERT INTO books(id, title, author, price, stock)
VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

-- Display prrice < 450 & stock > 30
SELECT * FROM books
WHERE price < 450 AND stock > 30;

-- Update Deep Work
UPDATE books
SET stock = 45
price = 420
WHERE title = Deep Work;

-- Delete Ikigai
DELETE FROM books
WHERE title = 'Ikigai';

-- Average price and total books
SELECT AVG(price), COUNT(*) FROM books;

-- Top 3 expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 3;
