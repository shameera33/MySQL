--Table created
CREATE TABLE student (id INT, name VARCHAR(10), age INT, department VARCHAR(20), grade INT);
INSERT INTO student (id, name, age, department, grade)
                      VALUES (101,'Stella',21,'ECE',72),
                      (102,'Alex',22,'computer science',90),
                      (103,'Riya',19,'EEE',65),
                      (104,'John',19,'physics',85),
                      (105,'Riza',22,'chemistry',89);

 -- students whose age is greater than 20
 SELECT * FROM student
WHERE age > 20;

--students in the 'Computer Science' or 'Physics' departments
SELECT * FROM student
WHERE department IN ('Physics','computer science');

-- grades between 70 and 90
SELECT * FROM student
WHERE grade BETWEEN 70 AND 90;

-- Grade 90
SELECT * FROM student
WHERE grade = 90;

