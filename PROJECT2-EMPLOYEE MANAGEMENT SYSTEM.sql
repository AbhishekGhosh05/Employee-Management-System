-- Creating Database

CREATE DATABASE employee_management_system;
USE employee_management_system;

-- Creating Table

CREATE TABLE department(
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE employees (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100) NOT NULL,
age INT,
gender VARCHAR(50),
city VARCHAR(100),
joining_date DATE,
department_id INT,

FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE salaries (
salary_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
salary_amount DECIMAL(10,2),
bonus DECIMAL(10,2),

FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE attendance (
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
attendance_date DATE,
status VARCHAR(100)
);

-- Inserting Values

INSERT INTO department (department_name) VALUES
('HR'),
('IT'),
('Finance'),
('Marketing'),
('Operations'),
('Sales'),
('Support'),
('Admin');

INSERT INTO employees
(employee_name, age, gender, city, joining_date, department_id)
VALUES
('Rahul Sharma', 25, 'Male', 'Mumbai', '2023-01-15', 2),
('Priya Mehta', 28, 'Female', 'Delhi', '2022-03-10', 1),
('Aman Verma', 30, 'Male', 'Pune', '2021-07-20', 3),
('Sneha Patil', 27, 'Female', 'Mumbai', '2020-11-05', 4),
('Karan Singh', 29, 'Male', 'Bangalore', '2019-06-18', 2),
('Neha Joshi', 24, 'Female', 'Pune', '2023-02-12', 5),
('Rohit Das', 31, 'Male', 'Delhi', '2018-08-25', 6),
('Anjali Kapoor', 26, 'Female', 'Mumbai', '2021-09-15', 7),
('Vikas Yadav', 32, 'Male', 'Lucknow', '2017-05-10', 3),
('Pooja Shah', 27, 'Female', 'Ahmedabad', '2022-01-11', 1),

('Arjun Nair', 29, 'Male', 'Chennai', '2020-03-17', 2),
('Kritika Jain', 25, 'Female', 'Indore', '2023-04-01', 4),
('Saurabh Mishra', 34, 'Male', 'Kanpur', '2016-12-22', 5),
('Meera Iyer', 28, 'Female', 'Hyderabad', '2021-06-30', 6),
('Nikhil Gupta', 30, 'Male', 'Mumbai', '2019-09-14', 7),
('Simran Kaur', 26, 'Female', 'Chandigarh', '2022-08-19', 8),
('Deepak Roy', 33, 'Male', 'Kolkata', '2018-11-08', 2),
('Riya Sen', 24, 'Female', 'Pune', '2023-05-10', 1),
('Harsh Patel', 29, 'Male', 'Surat', '2020-10-12', 3),
('Tanvi Kulkarni', 27, 'Female', 'Nagpur', '2021-01-05', 4),

('Aditya Rao', 31, 'Male', 'Bangalore', '2017-07-18', 5),
('Ishita Malhotra', 25, 'Female', 'Delhi', '2022-09-09', 6),
('Manoj Tiwari', 35, 'Male', 'Patna', '2015-02-14', 7),
('Kavya Reddy', 28, 'Female', 'Hyderabad', '2020-06-22', 8),
('Yash Thakur', 26, 'Male', 'Mumbai', '2023-03-03', 2),
('Aarti Deshmukh', 29, 'Female', 'Pune', '2019-12-11', 3),
('Sameer Khan', 32, 'Male', 'Bhopal', '2018-04-27', 4),
('Naina Arora', 24, 'Female', 'Jaipur', '2022-11-16', 5),
('Rakesh Kumar', 30, 'Male', 'Delhi', '2021-08-08', 6),
('Shweta Pillai', 27, 'Female', 'Chennai', '2020-05-20', 1);


INSERT INTO salaries
(employee_id, salary_amount, bonus)
VALUES
(1, 55000, 5000),
(2, 60000, 7000),
(3, 75000, 10000),
(4, 50000, 4000),
(5, 68000, 8000),
(6, 52000, 3000),
(7, 72000, 9000),
(8, 48000, 2500),
(9, 81000, 12000),
(10, 59000, 6000),

(11, 65000, 7500),
(12, 53000, 3500),
(13, 88000, 15000),
(14, 62000, 5000),
(15, 71000, 8500),
(16, 47000, 2000),
(17, 79000, 11000),
(18, 51000, 3200),
(19, 76000, 9800),
(20, 56000, 4100),

(21, 83000, 13000),
(22, 54000, 3900),
(23, 92000, 16000),
(24, 60000, 5000),
(25, 58000, 4500),
(26, 74000, 9500),
(27, 69000, 8200),
(28, 50000, 3000),
(29, 64000, 6200),
(30, 57000, 4700);


INSERT INTO attendance
(employee_id, attendance_date, status)
VALUES
(1, '2026-05-01', 'Present'),
(2, '2026-05-01', 'Absent'),
(3, '2026-05-01', 'Present'),
(4, '2026-05-01', 'Leave'),
(5, '2026-05-01', 'Present'),
(6, '2026-05-01', 'Present'),
(7, '2026-05-01', 'Absent'),
(8, '2026-05-01', 'Present'),
(9, '2026-05-01', 'Leave'),
(10, '2026-05-01', 'Present'),

(11, '2026-05-02', 'Present'),
(12, '2026-05-02', 'Absent'),
(13, '2026-05-02', 'Present'),
(14, '2026-05-02', 'Present'),
(15, '2026-05-02', 'Leave'),
(16, '2026-05-02', 'Present'),
(17, '2026-05-02', 'Absent'),
(18, '2026-05-02', 'Present'),
(19, '2026-05-02', 'Present'),
(20, '2026-05-02', 'Leave'),

(21, '2026-05-03', 'Present'),
(22, '2026-05-03', 'Absent'),
(23, '2026-05-03', 'Present'),
(24, '2026-05-03', 'Present'),
(25, '2026-05-03', 'Leave'),
(26, '2026-05-03', 'Present'),
(27, '2026-05-03', 'Present'),
(28, '2026-05-03', 'Absent'),
(29, '2026-05-03', 'Present'),
(30, '2026-05-03', 'Present');

-- Start the Analysis....

SELECT employee_name AS employee,
city
FROM employees
WHERE city = "Mumbai";

SELECT employee_name as employee,
age
FROM employees
WHERE age > 30;

SELECT employee_name AS employee,
gender
FROM employees
WHERE gender = "Female";

SELECT employee_name AS employee,
joining_date
FROM employees
WHERE joining_date > "2021-12-31";

SELECT *
FROM employees
ORDER BY joining_date;

SELECT 
e.employee_name,
s.salary_amount
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.salary_amount > 70000;

SELECT 
e.employee_name,
b.bonus
FROM employees e
JOIN salaries b
ON e.employee_id = b.employee_id
WHERE b.bonus > 5000;

SELECT 
e.employee_name,
a.status
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
WHERE a.status = "Absent";

SELECT 
e.employee_name AS employee,
d.department_name AS department
FROM employees e
JOIN department d
ON e.department_id = d.department_id
WHERE d.department_name = "HR";

SELECT 
employee_name AS employee,
city 
FROM employees
WHERE city LIKE "D%" ; 

SELECT 
e.employee_name AS employee,
d.department_name AS department
FROM employees e
JOIN department d
ON e.department_id = d.department_id;
 
 SELECT 
    e.employee_name,
    s.salary_amount,
    s.bonus
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id;

SELECT 
AVG(salary_amount) AS average_salary
from salaries;

SELECT
MAX(salary_amount) AS maximum_salary
FROM salaries;

 SELECT
 MIN(salary_amount) AS manimum_salary
 FROM salaries;
 
 SELECT
 d.department_name,
 COUNT(e.employee_id) AS total_employees
 FROM 
 department d 
 JOIN employees e 
 ON d.department_id = e.department_id
 GROUP BY d.department_name;

SELECT
SUM(salary_amount + bonus) AS total_expenses
FROM salaries;

SELECT
status,
COUNT(*) AS attendancess
FROM attendance
GROUP BY status;

SELECT
d.department_name,
AVG(s.salary_amount) AS average_salary
FROM salaries s
JOIN department d 
ON s.employee_id = d.department_id
GROUP BY department_name;

SELECT 
d.department_name,
COUNT(e.employee_id) as total_employees
FROM department d 
JOIN employees e 
ON d.department_id = e.department_id
GROUP BY department_name
HAVING COUNT(e.employee_id) > 3;

SELECT 
e.employee_name, 
s.salary_amount
FROM employees e 
JOIN salaries s
ON e.employee_id = s.employee_id
ORDER BY s.salary_amount DESC
LIMIT 5;

SELECT 
e.employee_name, 
s.salary_amount
FROM employees e 
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.salary_amount BETWEEN 50000 AND 70000;

SELECT 
e.employee_name,
SUM(s.salary_amount + s.bonus) AS total_salary
FROM employees e 
JOIN salaries s
ON e.employee_id = s.employee_id
GROUP BY e.employee_name;

SELECT 
e.employee_name,
a.status
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
WHERE 
status = "Leave";

SELECT
city, 
COUNT(employee_id) AS total_employees
FROM employees
GROUP BY city;

SELECT 
e.employee_name,
s.salary_amount
FROM employees e 
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.salary_amount > (
	SELECT AVG(salary_amount)
    FROM salaries
    );


SELECT
d.department_name,
AVG(s.salary_amount) AS average_salary
FROM department d
JOIN employees e 
ON d.department_id = e.department_id
JOIN salaries s
ON s.employee_id = e.employee_id
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;

INSERT INTO attendance (employee_id, attendance_date, status)
VALUES
(2, '2026-05-04', 'Absent'),
(2, '2026-05-05', 'Absent');

SELECT 
    e.employee_name,
    COUNT(a.attendance_id) AS absent_count
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
WHERE a.status = 'Absent'
GROUP BY e.employee_name
HAVING COUNT(a.attendance_id) > 1;

SELECT 
    e.employee_name,
    d.department_name,
    s.salary_amount,
    a.status
FROM employees e
JOIN department d
ON e.department_id = d.department_id
JOIN salaries s
ON e.employee_id = s.employee_id
JOIN attendance a
ON e.employee_id = a.employee_id;

SELECT 
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM department d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC
LIMIT 1;

SELECT
d.department_name,
SUM(s.salary_amount + s.bonus) AS total_salary_expense
FROM salaries s 
JOIN department d
ON d.department_id = s.employee_id
GROUP BY d.department_name
ORDER BY total_salary_expense DESC;

SELECT
e.employee_name
FROM employees e
WHERE e.employee_id NOT IN (
	SELECT employee_id
    FROM attendance
    WHERE status = "Leave"	
);

CREATE VIEW high_salary_employee AS
SELECT 
e.employee_name,
s.salary_amount
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE salary_amount > 80000
;

SELECT * FROM high_salary_employee;

SELECT
employee_name,
joining_date
FROM employees
WHERE joining_date = (
	SELECT MIN(joining_date)
    FROM employees);

SELECT
d.department_name,
COUNT(e.employee_id) AS total_employee,
AVG(s.salary_amount) AS total_salary,
MAX(s.salary_amount) AS highest_salary,
MIN(s.salary_amount) AS lowest_salary
FROM department d
JOIN employees e
ON d.department_id = e.department_id
JOIN salaries s
ON e.employee_id = s.employee_id
GROUP BY d.department_name;

	SELECT 
    e.employee_name,
    (s.salary_amount + s.bonus) AS total_salary_expense
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
ORDER BY total_salary_expense DESC
LIMIT 1;

SELECT
    employee_name,
    salary_amount,
    RANK() OVER (ORDER BY salary_amount DESC) AS salary_rank
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id;

SELECT 
    d.department_name,
    AVG(s.salary_amount) AS average_salary
FROM department d
JOIN employees e
ON d.department_id = e.department_id
JOIN salaries s
ON e.employee_id = s.employee_id
GROUP BY d.department_name
HAVING AVG(s.salary_amount) > (
    SELECT AVG(salary_amount)
    FROM salaries
);

SELECT 
    e.employee_name,
    ROUND(
        (COUNT(CASE WHEN a.status = 'Present' THEN 1 END) * 100.0)
        / COUNT(a.attendance_id),
        2
    ) AS attendance_percentage
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
GROUP BY e.employee_name;


