-- SQL Queries for College Database

-- 1. Display all students
SELECT name, department FROM students;

-- 2. List teachers of the CSE department
SELECT name, qualification FROM teachers WHERE department = 'CSE';

-- 3. Students enrolled in DBMS
SELECT s.name AS student_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id
WHERE c.course_name = 'DBMS';

-- 4. Average marks by department
SELECT s.department, AVG(m.marks_obtained) AS avg_marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
GROUP BY s.department;

-- 5. Top student per course
SELECT c.course_name, s.name AS top_student, MAX(m.marks_obtained) AS marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN courses c ON m.course_id = c.course_id
GROUP BY c.course_name, s.name
ORDER BY marks DESC;

-- 6. Count total students per department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
