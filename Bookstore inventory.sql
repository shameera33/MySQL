-- Create a new database
CREATE DATABASE BookStoreDB;

-- Select the database
USE BookStoreDB;

-- authors table created
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(100)
);

-- books table created
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    price DECIMAL(10, 2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Add published_year to the books table
ALTER TABLE books
ADD COLUMN published_year INT;

-- Delete all rows from books table
DELETE FROM books;

-- Remove BookStoreDB database
DROP DATABASE BookStoreDB;