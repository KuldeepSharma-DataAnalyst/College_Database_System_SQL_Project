
-- Insert Data into College Database

INSERT INTO students (name, gender, age, department) VALUES
('Amit Sharma', 'Male', 20, 'CSE'),
('Neha Gupta', 'Female', 21, 'IT'),
('Ravi Verma', 'Male', 22, 'ECE'),
('Priya Singh', 'Female', 20, 'CSE'),
('Karan Mehta', 'Male', 21, 'ME');

INSERT INTO teachers (name, department, qualification, experience) VALUES
('Dr. R.K. Singh', 'CSE', 'PhD', 12),
('Dr. Anjali Mishra', 'IT', 'M.Tech', 8),
('Dr. Vivek Nair', 'ECE', 'PhD', 10),
('Dr. Poonam Verma', 'ME', 'M.Tech', 7);

INSERT INTO courses (course_name, department, teacher_id, credits) VALUES
('DBMS', 'CSE', 1, 4),
('Data Structures', 'CSE', 1, 4),
('Networking', 'IT', 2, 3),
('Digital Electronics', 'ECE', 3, 3),
('Thermodynamics', 'ME', 4, 3);

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-01-10'),
(1, 2, '2023-01-10'),
(2, 3, '2023-01-12'),
(3, 4, '2023-01-13'),
(4, 1, '2023-01-14'),
(5, 5, '2023-01-15');

INSERT INTO marks (student_id, course_id, marks_obtained, exam_type) VALUES
(1, 1, 88, 'Mid-Term'),
(1, 2, 91, 'Mid-Term'),
(2, 3, 79, 'Mid-Term'),
(3, 4, 85, 'Mid-Term'),
(4, 1, 92, 'Mid-Term'),
(5, 5, 75, 'Mid-Term');
