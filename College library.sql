-- Table created
CREATE TABLE books (id INT, title VARCHAR(30), author VARCHAR(30), price DECIMAL(10,2), genre VARCHAR(30));
INSERT INTO books (id, title, author, price, genre) 
VALUES (1, 'Wings of Fire', 'APJ Abdul Kalam', 250, 'Biography'), 
(2, 'The Jungle Book', 'Rudyard Kipling', 450, 'Adventure'), 
(3, 'The Great Gatsby', 'F.Scott Fitzgerald', 150, 'Fiction'), 
(4, 'The Lion King', 'Roger Allers', 300, 'Adventure'), 
(5, 'The Da Vinci Code', 'Dan Brown', 500, 'Thriller');

-- price greater than 400
SELECT * FROM books
WHERE price > 400;

-- genre is either 'History', 'Science', or 'Fiction'
SELECT * FROM books
WHERE genre IN ('History','Science','Fiction');

-- title is exactly 'The Great Gatsby'
SELECT * FROM books
WHERE title = 'The Great Gatsby';

-- not written by 'Dan Brown'
SELECT * FROM books
WHERE author <> 'Dan Brown';