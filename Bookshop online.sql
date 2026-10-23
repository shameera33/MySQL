-- First table movie 
CREATE TABLE books(id INT, title VARCHAR(50), author VARCHAR(50), genre VARCHAR(50), price DECIMAL(10,2), copies_sold INT);

-- Insert three books
INSERT INTO books(id, title, author, genre, price, copies_sold)
VALUES (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

-- Second table Bestseller
CREATE TABLE bestsellers(id INT,title VARCHAR(50),author VARCHAR(50),genre VARCHAR(50),price DECIMAL(10,2),copies_sold INT);
INSERT INTO bestsellers(id,title,author,genre,price,copiess_sold)
VALUES (4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

-- titles and authors from both tables
SELECT title, author FROM books
UNION ALL
SELECT title, author FROM bestsellers;

-- books with price > 400
SELECT *
FROM books
WHERE PRICE > 400;

-- average price of books
SELECT AVG(price) AS 'Average price'
FROM books;

-- Count no: of books
SELECT COUNT(*) FROM books;

-- title and author with aliases
SELECT title AS 'Book Title' ,author AS 'Written By'
FROM books;