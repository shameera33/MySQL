-- authors table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);
INSERT INTO authors VALUES
(1, 'Chetan Bhagat', 'chetan@gmail.com'),
(2, 'Arundhati Roy', 'arundhati@gmail.com'),
(3, 'R K Narayan', 'rkn@gmail.com'),
(4, 'Jhumpa Lahiri', 'jhumpa@gmail.com');

-- books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
INSERT INTO books VALUES
(101, 'Five Point Someone', 1),
(102, 'The God of Small Things', 2),
(103, 'Malgudi Days', 3),
(104, 'The Namesake', 4);