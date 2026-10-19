-- Table created
CREATE TABLE books (
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    price INT,
    stock INT
);

-- Inserting values
INSERT INTO books (book_id, title, author, price, stock)
VALUES
(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

-- Increase Learn SQL price by 50 and set stock to 12
UPDATE books
SET price = price + 50,
    stock = 12
WHERE title = 'Learn SQL';

-- Decrease stock by 2 for books priced above 500
UPDATE books
SET stock = stock - 2
WHERE price > 500;

-- Delete book_id=3
DELETE FROM books
WHERE book_id = 3;