CREATE DATABASE schoolDB;
USE schoolDB;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    age TINYINT(3)NOT NULL,
    gender CHAR(1)NOT NULL,
    city VARCHAR(100),
    date_of_birth DATE NOT NULL
);
--  inserting values
INSERT INTO students VALUES
(1, 'Arun', 24, 'M', 'Tirchy', '2001-01-11'),
(2, 'Bala', 21, 'M', 'Chennai', '2004-02-12'),
(3, 'Chitra', 24, 'F', 'Tirunelveli', '2001-03-14'),
(4, 'Ramya', 25, 'F', 'Madurai', '2000-02-12'),
(5, 'Indhu', 23, 'F', 'Tirunelveli', '2002-11-02'),
(6, 'Ram', 22, 'M', 'Coimbatore', '2003-05-19');

INSERT INTO students (student_id, name, age, gender, city, date_of_birth)
VALUES (7, 'Kumar', 23, 'M', 'Salem', '2002-07-21');

INSERT INTO students (student_id, name, age, gender, city, date_of_birth)
VALUES (8, 'Kumar', 24, 'M', 'chennai', '2001-08-25');


select * from students

