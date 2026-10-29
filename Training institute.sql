-- students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);
INSERT INTO students 
VALUES (1, 'Anu', 'anu@gmail.com'),
(2, 'Ammu', 'ammu@gmail.com'),
(3, 'Rahul', 'rahul@gmail.com'),
(4, 'Arun', 'arun@gmail.com');

-- courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);
INSERT INTO courses VALUES
(101, 'Python'),
(102, 'Java'),
(103, 'SQL'),
(104, 'Web Development');

-- enrollments table
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO enrollments VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104);