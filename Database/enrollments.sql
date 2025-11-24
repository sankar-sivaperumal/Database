use schoolDB;
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks DECIMAL(5,2),
    FOREIGN KEY (student_id)REFERENCES students(student_id),
    FOREIGN KEY (course_id)REFERENCES courses(course_id)
);

 INSERT INTO enrollments VALUES 
 (1, 1, 101, 87.2),
 (2, 2, 102, 89.5),
 (3, 3, 103, 90.1),
 (4, 4, 104, 92.5),
 (5, 5, 105, 94.7),
 (6, 6, 105, 97.8);
 
 


insert  into enrollments(enrollment_id, student_id, course_id, marks)
values(7, 7, 102, 91.3);
insert  into enrollments(enrollment_id, student_id, course_id, marks)
values(8, 8, 101, 90.1);
insert  into enrollments(enrollment_id, student_id, course_id, marks)
values(9, 9, 104, 95.1);




ALTER TABLE enrollments MODIFY COLUMN enrollment_id INT AUTO_INCREMENT;



select * from enrollments;
DELETE FROM enrollments
WHERE enrollment_id = 9;

Drop table enrollments;
