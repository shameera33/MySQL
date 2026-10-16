-- Table  creation
CREATE TABLE books (
    id INT,
    title VARCHAR(30),
    author VARCHAR(30),
    price INT,
    stock_status VARCHAR(20),
    genre VARCHAR(40)
);

INSERT INTO books (id, title, author, price, stock_status, genre)
VALUES
(1, 'Wings of Fire', 'A.P.J. Abdul Kalam', 350, 'In Stock', 'Autobiography'),
(2, 'The Alchemist', 'Paulo Coelho', 450, 'In Stock', 'Fiction'),
(3, 'Atomic Habits', 'James Clear', 750, 'Out of Stock', 'Self Help'),
(4, 'Ikigai', 'Hector Garcia', 300, 'In Stock', 'Self Help'),
(5, 'Harry Potter', 'J.K. Rowling', 800, 'Out of Stock', 'Fantasy'),
(6, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 650, 'In Stock', 'Finance');

-- genres available in the store (no duplicates)
SELECT DISTINCT genre
FROM books;

-- in stock and priced below 400
SELECT *
FROM books
WHERE stock_status = 'In Stock'
AND price < 400;

-- either out of stock or price above 700
SELECT *
FROM books
WHERE stock_status = 'Out of Stock'
OR price > 700;

-- 10% GST to the price
SELECT title, price, price + (price * 10 / 100) AS gst
FROM books;

-- price from highest to lowest
SELECT title, price, stock_status
FROM books
ORDER BY price DESC;