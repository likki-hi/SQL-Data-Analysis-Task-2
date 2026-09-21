-- ============================================
-- Maincrafts Technologies
-- SQL Data Analysis Internship - Task 2
-- Student Management Database
-- ============================================

-- 1. Create Students Table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

-- 2. Insert Students
INSERT INTO students (name, age, email)
VALUES
('Rahul', 20, 'rahul@gmail.com'),
('Priya', 21, 'priya@gmail.com'),
('Arjun', 20, 'arjun@gmail.com'),
('Sneha', 22, 'sneha@gmail.com'),
('Kiran', 21, 'kiran@gmail.com');


-- 3. Create Courses Table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- 4. Insert Courses
INSERT INTO courses (name)
VALUES
('Python'),
('SQL'),
('Data Analytics'),
('Power BI');


-- 5. Create Enrollments Table
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    grade INT
);

-- 6. Insert Enrollment Data
INSERT INTO enrollments (student_id, course_id, grade)
VALUES
(1, 1, 85),
(1, 2, 78),
(2, 1, 92),
(2, 3, 88),
(3, 2, 65),
(3, 4, 72),
(4, 1, 55),
(4, 3, 38),
(5, 2, 90),
(5, 4, 35);


-- ============================================
-- ANALYSIS QUERIES
-- ============================================

-- Query 1: List all students enrolled in each course
SELECT
    c.name AS course,
    s.name AS student,
    e.grade
FROM enrollments e
JOIN students s
    ON e.student_id = s.id
JOIN courses c
    ON e.course_id = c.id
ORDER BY c.name, s.name;


-- Query 2: Find average grade per course
SELECT
    c.name AS course,
    ROUND(AVG(e.grade), 2) AS average_grade
FROM enrollments e
JOIN courses c
    ON e.course_id = c.id
GROUP BY c.name
ORDER BY average_grade DESC;


-- Query 3: Find top 3 students overall
SELECT
    s.name AS student,
    ROUND(AVG(e.grade), 2) AS average_grade
FROM enrollments e
JOIN students s
    ON e.student_id = s.id
GROUP BY s.name
ORDER BY average_grade DESC
LIMIT 3;


-- Query 4: Count students who failed
-- Passing grade = 40
SELECT
    COUNT(DISTINCT student_id) AS failed_students
FROM enrollments
WHERE grade < 40;