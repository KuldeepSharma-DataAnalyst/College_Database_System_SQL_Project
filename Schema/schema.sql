-- College Database Management System - Schema

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(30)
);

CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    qualification VARCHAR(50),
    experience INT
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(30),
    teacher_id INT,
    credits INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE marks (
    mark_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks_obtained INT,
    exam_type VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


