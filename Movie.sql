-- Table movie created
CREATE TABLE movie(id INT, title VARCHAR(50), genre VARCHAR(50), release_year INT, rating DECIMAL(3,1), box_office INT);
INSERT INTO movie(id, title, genre, release_year, rating,
box_office)
VALUES (1, 'Inception', 'Sci-Fi', 2010, 8.8, 825),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 1004),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677),
(4, 'Joker', 'Drama', 2019, 8.4, 1074),
(5, 'Dunkirk', 'War', 2017, 7.9, 527);

-- Show title and earnings in cr
SELECT title, box_office AS 'Earnings (in Cr)'
FROM movie;

-- Rename title and genre columns
SELECT title AS 'Movie Title', genre AS Category
FROM movie;

-- -- Show Sci-Fi and Action movies with ratings
SELECT title,genre,rating AS 'IMDB Score'
FROM movie
WHERE genre IN('Sci-Fi','Action');

-- Show movies released from 2008 to 2015
SELECT title,release_year AS 'Release'
FROM movie
WHERE release_year BETWEEN 2008 AND 2015;

-- Count movies with ratings > 8.5
SELECT COUNT(*) AS 'High Rated Movies'
FROM movie
WHERE rating > 8.5;