USE schoolDB;

CREATE TABLE courses (
    course_id INT PRIMARY KEY ,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    teacher_name VARCHAR(100) NOT NULL
);

INSERT INTO courses VALUES
(101, 'Maths', 'Mani'),
(102, 'Physics', 'Guru'),
(103, 'Chemistry', 'Paul Raj'),
(104, 'Computer Science','John'),
(105, 'English', 'A2D');





 -- 10.select and print student with order
SELECT 
    course_id,
    COUNT(student_id) AS number_of_students
FROM 
    enrollments
GROUP BY 
    course_id;
