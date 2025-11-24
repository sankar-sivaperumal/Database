-- Find all Values  
 SELECT s.*, e.enrollment_id, e.marks
 FROM students s
 Left JOIN enrollments e ON e.student_id = s.student_id;  -- (Right join name,gender,city,dob,stid,age,enrolid,mark ),(inner join 20 e id and 20 std id)
 
--  Find one value  
SELECT s.*, e.enrollment_id, e.marks           --  (left join gives 29 std id,eid 20 & null values) (right join provides 20 stdid,eid1-20)
FROM students s
LEFT JOIN enrollments e ON e.student_id = s.student_id
WHERE s.student_id = 1;
 
 --  Gender filter
select * From students where gender="M";
      
--   create or insert values 
 INSERT INTO students (name, age, gender, city, date_of_birth)
      VALUES (?, ?, ?, ?, ?) ;
    
    
--  patch method for single value 
UPDATE students
SET s.name = "Ram"
WHERE student_id = 12;

--  UPDATE students
--  SET s.name = john, s.age =23 , s.gender ="m" , s.city ="kerala" , s.date_of_birth ="2020-11-11" 
--  WHERE student_id = 2;

--  delete a values 
 Delete FROM students
 WHERE student_id = 12;
	