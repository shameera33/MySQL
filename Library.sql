CREATE DATABASE library;

-- books table
USE library;
CREATE TABLE books (
    book_id INT,
    title VARCHAR(50)
);

INSERT INTO books (book_id, title)
VALUES (1, 'The Alchemist'),(2, 'The Power of Now'),(3, 'Think and Grow Rich'),(4, 'Clean Code');

-- borrowers table
USE library;
CREATE TABLE borrowers (
    borrower_id INT,
    name VARCHAR(50),
    book_id INT
);

INSERT INTO borrowers (borrower_id, name, book_id)
VALUES (101, 'Alice', 1),(102, 'Bob', 2),(103, 'Charlie', NULL);

-- All books with borrower names
USE library;
SELECT books.title, borrowers.name
FROM books
INNER JOIN borrowers
ON books.book_id = borrowers.book_id;

-- All borrowers with book details
SELECT borrowers.borrower_id,borrowers.name,books.book_id,books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

--  Books not borrowed by anyone
SELECT books.book_id,books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.borrower_id IS NULL;

-- All borrowers, including those without books
SELECT borrowers.borrower_id,borrowers.name,books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;