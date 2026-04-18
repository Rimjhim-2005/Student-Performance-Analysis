-- Create Table
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(10),
    math INT,
    science INT,
    programming INT,
    attendance INT
);

-- Insert Data
INSERT INTO students VALUES
(1,'Amit','CS',78,85,90,92),
(2,'Riya','CS',88,79,85,90),
(3,'Karan','IT',65,70,72,80),
(4,'Pooja','IT',92,91,95,96),
(5,'Rahul','CS',55,60,58,70);

--------------------------------------------------

-- 1. Display all student records
SELECT * FROM students;

--------------------------------------------------

-- 2. Average marks of each student
SELECT 
    name,
    (math + science + programming)/3 AS average_marks
FROM students;

--------------------------------------------------

-- 3. Top-performing student
SELECT 
    name,
    (math + science + programming)/3 AS average_marks
FROM students
ORDER BY average_marks DESC
LIMIT 1;

--------------------------------------------------

-- 4. Department-wise average marks
SELECT 
    department,
    AVG((math + science + programming)/3) AS dept_avg
FROM students
GROUP BY department;

--------------------------------------------------

-- 5. Students scoring below 60 in any subject
SELECT * 
FROM students
WHERE math < 60 OR science < 60 OR programming < 60;

--------------------------------------------------

-- 6. Overall class average
SELECT 
    AVG((math + science + programming)/3) AS class_average
FROM students;