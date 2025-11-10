-- ADDING values 
INSERT INTO students (student_id, name, age, gender, city, date_of_birth)
VALUES (7, 'Kumar', 23, 'M', 'Salem', '2002-07-21');

-- delete a value
DELETE FROM students
WHERE student_id = 9;

-- list all values

SELECT * FROM students;

-- modify values
UPDATE students
SET city = 'Chennai'
WHERE student_id = 7;

-- Display First name and last name
SELECT name AS first_student FROM students ORDER BY student_id ASC LIMIT 1;
SELECT name AS last_student FROM students ORDER BY student_id DESC LIMIT 1;

-- display btw 2003 - 2004
SELECT COUNT(*) AS number_of_students
FROM students
WHERE YEAR(date_of_birth) BETWEEN 2002 AND 2004;

-- total marks 
SELECT 
    s.name AS student_name,
    SUM(e.marks) AS total_marks
FROM 
    enrollments e
JOIN 
    students s ON e.student_id = s.student_id
GROUP BY 
    s.name;

-- more than 2 course 
SELECT 
    c.course_name,
    COUNT(e.student_id) AS number_of_students
FROM 
    enrollments e
JOIN 
    courses c ON e.course_id = c.course_id
GROUP BY 
    c.course_name
HAVING 
    COUNT(e.student_id) > 1;
    
-- Course details
SELECT 
    c.course_name,
    COUNT(e.student_id) AS number_of_students
FROM 
    enrollments e
JOIN 
    courses c ON e.course_id = c.course_id
GROUP BY 
    c.course_name;
    
-- name and total marks
SELECT 
    s.name,
    SUM(e.marks) AS total_marks
FROM 
    enrollments e
JOIN 
    students s ON e.student_id = s.student_id
GROUP BY 
    s.student_id;
 
--  courses and no of std
SELECT 
    c.course_name,
    COUNT(e.student_id) AS number_of_students
FROM 
    enrollments e
join 
courses c on e.course_id= c.course_id
GROUP BY 
    course_name;
  
-- display std name ,coursename ,teacher name ,mark
SELECT 
    s.name AS student_name,
    c.course_name,
    c.teacher_name,
    e.marks
FROM 
    enrollments e
JOIN 
    students s ON e.student_id = s.student_id
JOIN 
    courses c ON e.course_id = c.course_id;
    
    
    


