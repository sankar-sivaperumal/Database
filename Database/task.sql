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
    
    
    


