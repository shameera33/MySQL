CREATE DATABASE small_company;

-- employees table
USE small_company;
CREATE TABLE employees (
    id INT,
    name VARCHAR(50)
);
INSERT INTO employees (id, name)
VALUES (1, 'Anjali'),(2, 'Rohan'),(3, 'Meena');

-- departments table
USE small_company;
CREATE TABLE departments (
    emp_id INT,
    department_name VARCHAR(50)
);

INSERT INTO departments (emp_id, department_name) 
VALUES (1, 'HR'),(2, 'IT'),(4, 'Finance');

-- Shows all employees, even without a department
USE small_company;
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

-- Shows only employees with a department
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

-- Shows all department assignments, even without a matching employee
USE small_company;
SELECT employees.id, employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.id = departments.emp_id;