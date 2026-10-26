-- Table created
CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    course VARCHAR(100),
    fees_paid INT,
    status VARCHAR(10)
);

-- Inserting 3 students
INSERT INTO students (id, name, course, fees_paid, status)
VALUES
(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

-- fees_paid > 5000
SELECT *
FROM students
WHERE fees_paid > 5000;

-- Web Development students - active
UPDATE students
SET status = 'Active'
WHERE course = 'Web Development';

-- Increase Data Science fees by 1000
UPDATE students
SET fees_paid = fees_paid + 1000
WHERE course = 'Data Science';

-- Set student id 3 to Inactive and reduce fees by 500
UPDATE students
SET status = 'Inactive',
    fees_paid = fees_paid - 500
WHERE id = 3;

-- Delete id 2
DELETE FROM students
WHERE id = 2;

-- Delete students:inactive
DELETE FROM students
WHERE status = 'Inactive';